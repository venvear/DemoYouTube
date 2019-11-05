//
//  UIStackView+.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 06.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import UIKit

extension UIStackView {

    convenience init(_ axis: NSLayoutConstraint.Axis,
                     spacing: CGFloat = 0,
                     distribution: UIStackView.Distribution = .fill,
                     alignment: UIStackView.Alignment = .fill,
                     views: UIView...) {
        self.init(arrangedSubviews: views)
        self.spacing = spacing
        self.axis = axis
        self.distribution = distribution
        self.alignment = alignment
    }

    convenience init(_ axis: NSLayoutConstraint.Axis,
                     spacing: CGFloat = 0,
                     distribution: UIStackView.Distribution = .fill,
                     alignment: UIStackView.Alignment = .fill,
                     views: [UIView]) {
        self.init(arrangedSubviews: views)
        self.spacing = spacing
        self.axis = axis
        self.distribution = distribution
        self.alignment = alignment
    }

    func removeAllArrangedSubviews() {
        arrangedSubviews.forEach { [weak self] in
            self?.removeArrangedSubview($0)
            $0.removeFromSuperview()
        }
    }

    func add(arrangedSubviews: UIView...) {
        add(arrangedSubviews: arrangedSubviews)
    }

    func add(arrangedSubviews: [UIView]) {
        arrangedSubviews.forEach { [weak self] in self?.addArrangedSubview($0) }
    }
}
