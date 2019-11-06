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

    let videoPlayerView = VideoPlayerView()
    
    lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView(backgroundColor: UIColor.pallete.background)
        scrollView.addSubview(scrollContentView)
        scrollContentView.snp.makeConstraints { make in
            make.edges.centerX.equalToSuperview()
        }
        return scrollView
    }()
    
    let scrollContentView = UIView(backgroundColor: UIColor.pallete.background)
    
    let videoDetailView = DetailView(config: .init(showImage: false, subtitleOffset: 2))
    let channelView = ChannelView()
    
    let descriptonLabel = UILabel(font: .systemFont(ofSize: 14),
                                  textColor: .gray,
                                  numberOfLines: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fire(action: .loadData)
    }
    
    override func setupViewAndConstraints() {
        view.backgroundColor = UIColor.pallete.background
        
        view.add(subviews: videoPlayerView, scrollView)
        
        let heightVideoPlayer = UIScreen.main.bounds.width * 9 / 16
        
        videoPlayerView.snp.makeConstraints { (make) in
            make.top.left.right.equalToSuperview()
            make.height.equalTo(heightVideoPlayer)
        }

        scrollView.snp.makeConstraints { (make) in
            make.top.equalTo(videoPlayerView.snp.bottom)
            make.left.right.bottom.equalToSuperview()
        }
        
        let infoSeparatorView = SeparatorView()
        let descriptionSeparatorView = SeparatorView()

        scrollContentView.add(subviews: videoDetailView, channelView, infoSeparatorView, descriptionSeparatorView, descriptonLabel)
        
        videoDetailView.snp.makeConstraints { (make) in
            make.top.equalToSuperview().inset(12)
            make.left.right.equalToSuperview().inset(16)
        }
        
        infoSeparatorView.snp.makeConstraints { (make) in
            make.top.equalTo(videoDetailView.snp.bottom).offset(12)
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
        
        videoPlayerView.rx.tapClose
            .map { _ in VideoDetailReactor.Action.tapClose }
            .bind(to: reactor.action)
            .disposed(by: disposeBag)
        
        channelView.rx.tap
            .map { _ in VideoDetailReactor.Action.tapChannel }
            .bind(to: reactor.action)
            .disposed(by: disposeBag)
        
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
        videoDetailView.set(data: .init(video: video))
        descriptonLabel.text = video.description
        
        videoPlayerView.loadVideo(video.id)
    }
}
