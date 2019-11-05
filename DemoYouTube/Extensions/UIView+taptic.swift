//
//  UIView+taptic.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 06.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import UIKit

extension UIView {
    
    static func tapticButton() {
        if #available(iOS 10.0, *) {
            UISelectionFeedbackGenerator().selectionChanged()
        }
    }
    
    static func tapticTab() {
        if #available(iOS 10.0, *) {
            UIImpactFeedbackGenerator(style: .light).impactOccurred()
        }
    }
    
    static func tapticSuccess() {
        if #available(iOS 10.0, *) {
            UINotificationFeedbackGenerator().notificationOccurred(.success)
        }
    }

}
