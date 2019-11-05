//
//  CoordinatorType.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 05.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import UIKit

public protocol CoordinatorType: class {
    func show(_ style: UIAlertController.Style, title: String?, message: String, items: UIAlertAction...)
    func dismiss(completion: (() -> Void)?)
    func pop()
    func close(completion: (() -> Void)?)
}
