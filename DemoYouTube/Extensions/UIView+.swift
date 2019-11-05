//
//  UIView+.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 05.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import UIKit

extension UIView {

    convenience init(backgroundColor: UIColor) {
        self.init()
        self.backgroundColor = backgroundColor
    }

    func add(subviews: UIView...) {
        subviews.forEach(addSubview)
    }

    func touchInside(_ touches: Set<UITouch>, with event: UIEvent?) -> Bool {
        guard let touch = touches.first else { return false }
        let pointTouch = touch.location(in: self)
        return point(inside: pointTouch, with: event)
    }
}
 
