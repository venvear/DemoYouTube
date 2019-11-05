//
//  TapAnimatable.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 06.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import RxSwift

protocol TapAnimatable {
    
    var isEnableTap: Bool { get }
    var isTapticTap: Bool { get }

    var tapObservable: PublishSubject<Void> { get }
    var animationView: UIView { get }

    var tapDelayDuration: TimeInterval { get }
    var animationDuration: TimeInterval { get }
    
    func addAnimationView(view: UIView)
    func tapBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    func tapEnded(_ touches: Set<UITouch>, with event: UIEvent?)
    
    var opacityFrom: CGFloat { get }
    var opacityTo: CGFloat { get }
}

extension TapAnimatable where Self: UIView {
    
    var isEnableTap: Bool { return true }
    var isTapticTap: Bool { return false }
    
    var tapDelayDuration: TimeInterval { return 0.15 }
    var animationDuration: TimeInterval { return 0.35 }
    
    func addAnimationView(view: UIView) {
        view.addSubview(animationView)
        animationView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    func tapBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if !isEnableTap { return }
        guard let touch = touches.first else { return }
        let pointTouch = touch.location(in: self)
        animateTap(pointTouch)
    }
    
    func tapEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if !isEnableTap { return }
        if touchInside(touches, with: event) {
            
            DispatchQueue.main.asyncAfter(deadline: .now() + tapDelayDuration) { [weak self] in
                self?.tapObservable.onNext(())
            }
        }
    }
    
    var opacityFrom: CGFloat { return 0.6 }
    var opacityTo: CGFloat { return 0.0 }
    
    func animateTap(_ pointTouch: CGPoint) {
        let startSize = frame.width * 0.2
        let endSize = frame.width * 2
        
        let startRect = CGRect(x: 0, y: 0, width: startSize, height: startSize)
        let endRect = CGRect(x: 0, y: 0, width: endSize, height: endSize)
        
        let corner = CABasicAnimation(keyPath: "cornerRadius")
        corner.duration = animationDuration
        corner.fromValue = startSize / 2
        corner.toValue = endSize / 2
        
        let opacity = CABasicAnimation(keyPath: "opacity")
        opacity.duration = animationDuration
        opacity.fromValue = opacityFrom
        opacity.toValue = opacityTo
        
        let pulse = CABasicAnimation(keyPath: "bounds")
        pulse.duration = animationDuration
        pulse.fromValue = NSValue(cgRect: startRect)
        pulse.toValue = NSValue(cgRect: endRect)
        
        animationView.layer.setValue(pointTouch, forKey: "position")
        animationView.layer.add(pulse, forKey: nil)
        animationView.layer.add(corner, forKey: nil)
        animationView.layer.add(opacity, forKey: nil)
        animationView.layer.masksToBounds = true
        
        if isTapticTap { UIView.tapticButton() }
    }
    
}
