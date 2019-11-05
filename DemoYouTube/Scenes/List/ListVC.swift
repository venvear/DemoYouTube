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

class ListVC: BaseVC, SceneView {

    private lazy var tableView: UITableView = {
        let tv = UITableView()
//        tv.refreshControl = refreshControl
        tv.rowHeight = 72
//        tv.estimatedSectionHeaderHeight = SectionHeaderView.Size.large.height
//        tv.contentInset = UIEdgeInsets.all(0).with(bottom: 32)
//        tv.isExclusiveTouch = true
        tv.tableFooterView = UIView()
        tv.separatorStyle = .none
        tv.contentInsetAdjustmentBehavior = .never
        
        tv.register(VideoCell.self)
//        tv.register(PortfelSectionHeader.self)
        return tv
    }()
    
    private lazy var dataSource: RxTableViewSectionedReloadDataSource<VideoSection> = {
        return RxTableViewSectionedReloadDataSource<VideoSection> (
            configureCell: { [weak self] _, tv, ip, item in
                guard let self = self, let reactor = self.reactor else { return UITableViewCell() }

                let cell: VideoCell = tv.dequeue(for: ip)
                cell.set(data: item)
                return cell
        })
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        fire(action: .loadData)
    }
    
    override func setupViewAndConstraints() {
        view.backgroundColor = UIColor.pallete.background
        
        view.addSubview(tableView)

        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }

//        view.add(subviews: tableView, stubView, preloader)
//        tableView.snp.makeToSuperview(.edges)
//        stubView.snp.makeToSuperview(.centerX, .centerY)
//        preloader.snp.makeToSuperview(.edges)
    }
//
//    public override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//
//        resetSelected()
//    }
//
//    public override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//
//        fire(action: .loadData)
//    }
//
    func bind(reactor: ListReactor) {
//        tableView.rx.setDelegate(self).disposed(by: disposeBag)
//
//        tableView.rx.itemSelected
//            .map(Reactor.Action.selected)
//            .doNext(self, do: TradesVC.resetSelected)
//            .bind(to: reactor.action)
//            .disposed(by: disposeBag)
//
        reactor.state
            .map { $0.sections }
            .bind(to: tableView.rx.items(dataSource: dataSource))
            .disposed(by: disposeBag)
//
//        refreshControl.rx.controlEvent(.valueChanged)
//            .asObservable()
//            .map { Reactor.Action.loadData }
//            .bind(to: reactor.action)
//            .disposed(by: disposeBag)
//
//        reactor.state.map { !$0.isEmpty }.bind(to: stubView.rx.isHidden).disposed(by: disposeBag)
//        subscribeNext(reactor.state.map { $0.isBusy }, with: TradesVC.setInProgress)
//
////        stubView.isHidden = false
//
    }
//
//    func setInProgress(inProgress: Bool) {
//        if inProgress {
//            if refreshControl.isRefreshing {}
//            else { preloader.startAnimating() }
//        } else {
//            if refreshControl.isRefreshing { refreshControl.endRefreshing() }
//            else { preloader.stopAnimating() }
//        }
//    }
//
//    override public var listScrollView: UIScrollView? { return tableView as UIScrollView }
//
//    var loadingMore = false
}

//extension TradesVC: UITableViewDelegate {
//
//    private func resetSelected() {
//        tableView.deselectAllItems()
//    }
//
//    public func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        guard let reactor = reactor else { return nil }
//
//        let portfelOrderSection = reactor.currentState.sections[section]
//        let header: PortfelSectionHeader = tableView.dequeue()
//        header.set(title: portfelOrderSection.title)
//        return header
//    }
//
//}
//
//extension TradesVC {
//
//    public func scrollViewDidScroll(_ scrollView: UIScrollView) {
//        if !canListScroll() { return }
//
//        if loadingMore { return }
//
//        if scrollView.contentSize.height < scrollView.frame.size.height { return }
//
//        let currentOffset  = scrollView.contentOffset.y
//        let maiximumOffset = scrollView.contentSize.height - scrollView.frame.size.height
//        let deltaOffset    = maiximumOffset - currentOffset
//
//        if deltaOffset <= 0 {
//            loadingMore = true
//            self.fire(action: .loadMoreData)
//        }
//    }
//}

