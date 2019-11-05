//
//  VideoDetailVC.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 05.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import UIKit
import SnapKit
import RxSwift
import RxDataSources

class VideoDetailVC: BaseVC, SceneView {

    let videoPlayer = UIView(backgroundColor: .black)
    
    lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView(backgroundColor: UIColor.white)
        scrollView.addSubview(scrollContentView)
        scrollContentView.snp.makeConstraints { make in
            make.edges.centerX.equalToSuperview()
        }
        return scrollView
    }()
    
    let scrollContentView = UIView(backgroundColor: UIColor.white)
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = .black
        label.numberOfLines = 1
        return label
    }()
    
    let infoLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.numberOfLines = 1
        label.textColor = UIColor.lightGray
        return label
    }()
    
    lazy var videoInfoView: UIView = {
        let view = UIView()
        let stackView = UIStackView(.vertical, spacing: 4, distribution: .fill, alignment: .fill, views: [titleLabel, infoLabel])
        view.add(subviews: stackView)
        stackView.snp.makeConstraints { (make) in
            make.top.bottom.equalToSuperview().inset(12)
            make.left.right.equalToSuperview().inset(16)
        }
        return view
    }()
    
    let channelView = ChannelView()
    
    let descriptonLabel = UILabel(font: .systemFont(ofSize: 14),
                                  textColor: .gray,
                                  numberOfLines: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fire(action: .loadData)
    }
    
    override func setupViewAndConstraints() {
        view.backgroundColor = UIColor.white
        
        view.add(subviews: videoPlayer, scrollView)
        
        let heightVideoPlayer = UIScreen.main.bounds.width * 9 / 16
        
        videoPlayer.snp.makeConstraints { (make) in
            make.top.left.right.equalToSuperview()
            make.height.equalTo(heightVideoPlayer)
        }

        scrollView.snp.makeConstraints { (make) in
            make.top.equalTo(videoPlayer.snp.bottom)
            make.left.right.bottom.equalToSuperview()
        }
        
        let infoSeparatorView = SeparatorView()
        let descriptionSeparatorView = SeparatorView()

        scrollContentView.add(subviews: videoInfoView, channelView, infoSeparatorView, descriptionSeparatorView, descriptonLabel)
        
        videoInfoView.snp.makeConstraints { (make) in
            make.top.left.right.equalToSuperview()
        }
        
        infoSeparatorView.snp.makeConstraints { (make) in
            make.top.equalTo(videoInfoView.snp.bottom)
            make.left.right.equalToSuperview()
        }
        
        channelView.snp.makeConstraints { (make) in
            make.top.equalTo(infoSeparatorView.snp.bottom)
            make.left.right.equalToSuperview()
        }
        
        descriptionSeparatorView.snp.makeConstraints { (make) in
            make.top.equalTo(channelView.snp.bottom)
            make.left.right.equalToSuperview()
        }
        
        descriptonLabel.snp.makeConstraints { (make) in
            make.top.equalTo(descriptionSeparatorView.snp.bottom).offset(16)
            make.left.right.bottom.equalToSuperview().inset(16)
        }
        
    }

    func bind(reactor: VideoDetailReactor) {
        
        reactor.state
            .map { $0.video }
            .subscribeNext(self, with: VideoDetailVC.setVideo, bag: disposeBag)
        
        reactor.state
            .map { $0.video.channel }
            .bind(to: channelView.rx.channel)
            .disposed(by: disposeBag)
        
    }

}

extension VideoDetailVC {
    
    func setVideo(_ video: Video) {
        titleLabel.text = video.title
        infoLabel.text = "\(video.channel.title) • \(video.statistics.views) просмотров"
        descriptonLabel.text = video.description
    }
}
