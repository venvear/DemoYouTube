//
//  UIImage+app.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 05.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import UIKit

extension UIImage {
    
    enum AppImage: String, CaseIterable {
        case trends
        case favorites
        case search
        case pause
        case play
        case cancel
        case thumb
    }
    
    static func app(_ appImage: AppImage, rendering: RenderingMode = .automatic) -> UIImage? {
        return UIImage(named: appImage.rawValue, in: Bundle(for: App.self), compatibleWith: nil)?.withRenderingMode(rendering)
    }
}
