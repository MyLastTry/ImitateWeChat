//
//  Extension.swift
//  ImitateWeChat
//
//  Created by Xltt on 2022/10/13.
//

import Foundation
import UIKit

// MARK: -------------------------------- UIColor --------------------------------
extension UIColor
{
    // 返回HSBA模式颜色值
    public var hsba: (hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat) {
        var h: CGFloat = 0
        var s: CGFloat = 0
        var b: CGFloat = 0
        var a: CGFloat = 0
        self.getHue(&h, saturation: &s, brightness: &b, alpha: &a)
        return (h * 360, s, b, a)
    }
    
    @objc convenience init(r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat = 1.0) {
        self.init(red: r / 255.0, green: g / 255.0,
                  blue: b / 255.0, alpha: a)
    }
    
    convenience init(hex string: String)
    {
        var hex = string.hasPrefix("#") ? String(string.dropFirst()) : string
        guard hex.count == 3 || hex.count == 6 else {
            self.init(white: 1.0, alpha: 0.0)
            return
        }
        
        if hex.count == 3
        {
            for (index, char) in hex.enumerated()
            {
                hex.insert(char, at: hex.index(hex.startIndex, offsetBy: index * 2))
            }
        }
        
        self.init(red:   CGFloat((Int(hex, radix: 16)! >> 16) & 0xFF) / 255.0,
                  green: CGFloat((Int(hex, radix: 16)! >> 8) & 0xFF) / 255.0,
                  blue:  CGFloat((Int(hex, radix: 16)!) & 0xFF) / 255.0, alpha: 1.0)
    }
    
    func getRGB() -> [UInt8]
    {
        func zeroIfDodgy(value: Float) ->Float
        {
            return (value.isNaN) || (value.isInfinite) ? 0 : value
        }
        if (self.cgColor.numberOfComponents) == 4
        {
            let colorRef = (self.cgColor.components)!
            let redComponent = UInt8(255 * zeroIfDodgy(value: Float(colorRef[0])))
            let greenComponent = UInt8(255 * zeroIfDodgy(value: Float(colorRef[1])))
            let blueComponent = UInt8(255 * zeroIfDodgy(value: Float(colorRef[2])))
            let alphaComponent = UInt8(255 * zeroIfDodgy(value: Float(colorRef[3])))
            return [redComponent, greenComponent, blueComponent, alphaComponent]
        }
        else if (self.cgColor.numberOfComponents) == 2
        {
            let colorRef = (self.cgColor.components)!
            let greyComponent = UInt8(255 * zeroIfDodgy(value: Float(colorRef[0])))
            let alphaComponent = UInt8(255 * zeroIfDodgy(value: Float(colorRef[1])))
            return [greyComponent, greyComponent, greyComponent, alphaComponent]
        }
        else
        {
            return [0,0,0,0]
        }
    }
    
    func hexString() -> String
    {
        var r:CGFloat = 0
        var g:CGFloat = 0
        var b:CGFloat = 0
        var a:CGFloat = 0
        getRed(&r, green: &g, blue: &b, alpha: &a)
        let rgb:Int = (Int)(r*255)<<16 | (Int)(g*255)<<8 | (Int)(b*255)<<0
        return NSString(format:"#%06x", rgb) as String
    }
    
    func toHex() -> String
    {
        let rgba = self.getRGB()
        
        let rgb:Int = (Int)(rgba[0])<<16 | (Int)(rgba[1])<<8 | (Int)(rgba[2])<<0
        return NSString(format:"#%06x", rgb) as String
    }
    
    func invertColor() -> UIColor {
        var r:CGFloat = 0, g:CGFloat = 0, b:CGFloat = 0
        self.getRed(&r, green: &g, blue: &b, alpha: nil)
        return UIColor(red:1.0-r, green: 1.0-g, blue: 1.0-b, alpha: 1.0)
    }
}
