//
//  ColorPallete.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 05.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import UIKit

public struct ColorPallete {
    public static var `default` = ColorPallete()

    public var white: UIColor { .color(light: .white, dark: .black) }
    public var black: UIColor { .color(light: .black, dark: .white) }

    // фон
    public var background: UIColor { .color(light: .white, dark: hex("1C1C1E")) }
    
    
}


private var colorPalleteKey = "colorPallete"

extension UIColor {
    public static var pallete: ColorPallete {
        if let object = objc_getAssociatedObject(self, &colorPalleteKey) as? ColorPallete {
            return object
        }
        return ColorPallete.default
    }
    
    public static func set(pallete: ColorPallete) {
        objc_setAssociatedObject(self, &colorPalleteKey, pallete, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
    }
    
}

private func hex(_ hex: String) -> UIColor {
    return UIColor(hexString: hex)
}
