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
    var tap: Observable<Void> { return base._tapObservable }
    
    var channel: Binder<Channel> {
        return Binder(self.base) { el, val in
            el.detailView.set(data: .init(channel: val))
        }
    }
}

class ChannelView: UIView, TapAnimatable {
    
    internal var tapObservable = PublishSubject<Void>()
    fileprivate lazy var _tapObservable = { tapObservable.asObservable() }()

    let detailView = DetailView()
    
    internal let animationView: UIView = {
        let view = UIView(backgroundColor: .gray)
        view.alpha = 0
        return view
    }()
    
    init() {
        super.init(frame: .zero)
        setupViewsAndConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) { fatalError() }
    
    private func setupViewsAndConstraints() {
        backgroundColor = UIColor.pallete.background
        clipsToBounds = true
        
        add(subviews: detailView)
        
        detailView.snp.makeConstraints { (make) in
            make.top.bottom.equalToSuperview().inset(12)
            make.left.right.equalToSuperview().inset(16)
        }

        addAnimationView(view: self)
    }
    
    override public func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        tapBegan(touches, with: event)
    }

    override public func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        tapEnded(touches, with: event)
    }
    
}
