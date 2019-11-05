//
//  UILabel+.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 06.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import UIKit

extension UILabel {

    convenience init(font: UIFont = .systemFont(ofSize: 16),
                     textColor: UIColor = .black,
                     numberOfLines: Int = 1) {
        
        self.init()
        self.font = font
        self.textColor = textColor
        self.numberOfLines = numberOfLines
    }
}
