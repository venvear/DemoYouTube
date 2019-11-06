//
//  ListVC.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 05.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import UIKit
import SnapKit
import RxSwift
import RxDataSources

class TrendsVC: BaseVC, SceneView {

    let refreshControl = UIRefreshControl()
    let activityIndicator = UIActivityIndicatorView(style: .gray)
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = TrendVideoCell.size
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 0
        layout.scrollDirection = .vertical
        
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.refreshControl = refreshControl
        cv.contentInset = .zero
        cv.register(TrendVideoCell.self)
        return cv
    }()
    
    private lazy var dataSource: RxCollectionViewSectionedReloadDataSource<VideoSection> = {
        return RxCollectionViewSectionedReloadDataSource<VideoSection> (
            configureCell: { [weak self] _, tv, ip, item in
                guard let self = self, let reactor = self.reactor else { return UICollectionViewCell() }

                let cell: TrendVideoCell = tv.dequeue(for: ip)
                cell.set(data: item)
                
                cell.disposeBag = DisposeBag()
                cell.rx.tapChannel
                    .do(onNext: { _ in UIView.tapticButton() })
                    .map { Reactor.Action.tapChannel(ip) }
                    .bind(to: reactor.action)
                    .disposed(by: cell.disposeBag)
                
                return cell
        })
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        fire(action: .loadData)
    }
    
    override func setupViewAndConstraints() {
        
        navigationItem.title = "Demo YouTube"
        
        view.backgroundColor = UIColor.pallete.background
        view.add(subviews: collectionView, activityIndicator)
        
        collectionView.backgroundColor = UIColor.pallete.background
        collectionView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        activityIndicator.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
    }

    func bind(reactor: TrendsReactor) {
        collectionView.rx.setDelegate(self).disposed(by: disposeBag)
        
        reactor.state
            .map { $0.sections }
            .do(onNext: { [weak self] _ in self?.loadingMore = false })
            .bind(to: collectionView.rx.items(dataSource: dataSource))
            .disposed(by: disposeBag)
        
        collectionView.rx.itemSelected
            .map(Reactor.Action.selected)
            .bind(to: reactor.action)
            .disposed(by: disposeBag)
        
        refreshControl.rx.controlEvent(.valueChanged)
            .asObservable()
            .map { Reactor.Action.loadData }
            .bind(to: reactor.action)
            .disposed(by: disposeBag)

        subscribeNext(reactor.state.map { $0.inProgressLoad }, with: TrendsVC.setInProgress)
    }

    
    func setInProgress(inProgress: Bool) {
        if inProgress {
            if refreshControl.isRefreshing {}
            else { activityIndicator.startAnimating() }
        } else {
            if refreshControl.isRefreshing { refreshControl.endRefreshing() }
            else { activityIndicator.stopAnimating() }
        }
    }

    var loadingMore = false
}

extension TrendsVC: UIScrollViewDelegate {

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if loadingMore { return }

        if scrollView.contentSize.height < scrollView.frame.size.height { return }

        let currentOffset  = scrollView.contentOffset.y
        let maiximumOffset = scrollView.contentSize.height - scrollView.frame.size.height
        let deltaOffset    = maiximumOffset - currentOffset

        if deltaOffset <= 0 {
            loadingMore = true
            fire(action: .loadMore)
        }
    }
}

