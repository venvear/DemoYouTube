//
//  ChannelView.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 06.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

extension Reactive where Base: ChannelView {
//    var tap: Observable<Void> { return base._tapObservable }
    
    var channel: Binder<Channel> {
        return Binder(self.base) { el, val in el.channel = val }
    }
}

class ChannelView: UIView {
    
    private var tapObservable = PublishSubject<Channel>()
    fileprivate lazy var _tapObservable = { tapObservable.asObservable() }()

    let channelLogoButton: UIButton = {
        let button = UIButton()
        button.contentMode = .scaleAspectFill
        button.layer.cornerRadius = 22
        button.layer.masksToBounds = true
        button.backgroundColor = UIColor(white: 0.5, alpha: 0.5)
        return button
    }()
    
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
    
    internal let animationView: UIView = {
        let view = UIView(backgroundColor: .gray)
        view.alpha = 0
        return view
    }()
    
    var channel: Channel!
    
    init() {
        super.init(frame: .zero)
        setupViewsAndConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) { fatalError() }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: UIView.noIntrinsicMetric, height: 60)
    }
    
    private func setupViewsAndConstraints() {
        backgroundColor = UIColor.white
        
//        add(subviews: nameLabel, arrowImageView)
//
//        nameLabel.snp.makeConstraints { make in
//            make.left.equalToSuperview().inset(16)
//            make.centerY.equalToSuperview()
//            make.right.equalTo(arrowImageView.snp.left).offset(8)
//        }
//
//        arrowImageView.snp.makeConstraints { make in
//            make.right.equalToSuperview().inset(16)
//            make.centerY.equalToSuperview()
//            make.width.equalTo(8)
//            make.height.equalTo(12)
//        }
//
//        addAnimationView(view: self)
    }
    
    
    
//    override public func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        tapBegan(touches, with: event)
//    }
//
//    override public func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
//        tapEnded(touches, with: event)
//    }
    
}
