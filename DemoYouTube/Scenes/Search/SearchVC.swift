//
//  SearchVC.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 06.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import UIKit
import SnapKit
import RxSwift
import RxCocoa
import RxDataSources

class SearchVC: BaseVC, SceneView {

    lazy var searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.searchBarStyle = .default
        searchBar.placeholder = "Найти видео"
        searchBar.sizeToFit()
        searchBar.showsCancelButton = false
        searchBar.autocapitalizationType = .none
        searchBar.autocorrectionType = .no
        return searchBar
    }()
    
    let activityIndicator = UIActivityIndicatorView(style: .gray)
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = SearchVideoCell.size
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 0
        layout.scrollDirection = .vertical
        
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.contentInset = .zero
        cv.register(SearchVideoCell.self)
        cv.keyboardDismissMode = .onDrag
        return cv
    }()
    
    private lazy var dataSource: RxCollectionViewSectionedReloadDataSource<VideoSection> = {
        return RxCollectionViewSectionedReloadDataSource<VideoSection> (
            configureCell: { [weak self] _, tv, ip, item in
                guard let self = self, let reactor = self.reactor else { return UICollectionViewCell() }

                let cell: SearchVideoCell = tv.dequeue(for: ip)
                cell.set(data: item)
                return cell
        })
    }()
    
    override func setupViewAndConstraints() {
        
        navigationItem.titleView = searchBar
        
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

    func bind(reactor: SearchReactor) {
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

        reactor.state
            .map { $0.inProgressLoad }
            .bind(to: activityIndicator.rx.isAnimating)
            .disposed(by: disposeBag)
        
        searchBar.rx.text
            .orEmpty
            .debounce(1, scheduler: MainScheduler.instance)
            .distinctUntilChanged()
            .filter { !$0.isEmpty }
            .map { SearchReactor.Action.search($0) }
            .bind(to: reactor.action)
            .disposed(by: disposeBag)
    }

    var loadingMore = false
}

extension SearchVC: UIScrollViewDelegate {

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

