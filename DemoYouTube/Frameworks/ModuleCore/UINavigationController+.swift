//
//  UINavigationController+.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 05.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import UIKit

extension UINavigationController {
    func pop(animated: Bool = true, completion: (() -> Void)? = nil) {
        guard let completion = completion else { popViewController(animated: animated); return }

        CATransaction.begin()
        CATransaction.setCompletionBlock(completion)
        popViewController(animated: animated)
        CATransaction.commit()
    }
}
