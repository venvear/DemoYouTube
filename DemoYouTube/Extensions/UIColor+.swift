//
//  UIColor+.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 05.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import UIKit

public typealias RGBA = (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)

public extension UIColor {

    var hexString: String {
        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        var a: CGFloat = 0

        getRed(&r, green: &g, blue: &b, alpha: &a)

        let rgb: Int = (Int)(r * 255) << 16 | (Int)(g * 255) << 8 | (Int)(b * 255) << 0

        return String(format: "#%06x", rgb).uppercased()
    }

    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")

        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }

    convenience init(netHex: Int) {
        self.init(red: (netHex >> 16) & 0xff, green: (netHex >> 8) & 0xff, blue: netHex & 0xff)
    }
    
    convenience init(hexString: String) {
        
        var hexString: String = hexString.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        if hexString.hasPrefix("#") { hexString.remove(at: hexString.startIndex) }

        var rgbValue:UInt64 = 0
        Scanner(string: hexString).scanHexInt64(&rgbValue)
        
        self.init(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }

    func getRGBA() -> RGBA {
        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        var a: CGFloat = 0
        
        getRed(&r, green: &g, blue: &b, alpha: &a)
        return (red: r, green: g, blue: b, alpha: a)
    }
    
    func isGreaterThan(_ color: UIColor) -> Bool {
        let rgba = getRGBA()
        let rgba2 = color.getRGBA()
        
        return rgba.red > rgba2.red && rgba.green > rgba2.green && rgba.blue > rgba2.blue
    }
    
    func isSmallerThan(_ color: UIColor) -> Bool {
        let rgba = getRGBA()
        let rgba2 = color.getRGBA()
        
        return rgba.red < rgba2.red && rgba.green < rgba2.green && rgba.blue < rgba2.blue
    }
    
    static func black(alpha: CGFloat) -> UIColor {
        return UIColor.black.withAlphaComponent(alpha)
    }
    
    static func white(alpha: CGFloat) -> UIColor {
        return UIColor.white.withAlphaComponent(alpha)
    }
    
    static func color(light: UIColor, dark: UIColor) -> UIColor {
        if #available(iOS 13, *) { return UIColor { if $0.userInterfaceStyle == .dark { return dark } else { return light } }
        } else { return light }
    }
    
}
