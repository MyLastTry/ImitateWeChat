//
//  CommonDefine.swift
//  ImitateWeChat
//
//  Created by Xltt on 2022/10/13.
//

import Foundation
import UIKit
// MARK: -------------------------------- 全局Import --------------------------------
@_exported
import SnapKit
let appDelegate =  UIApplication.shared.connectedScenes.first?.delegate as! SceneDelegate
// MARK: -------------------------------- IsiPad --------------------------------
let IsiPad: Bool = {
    let deviceType = UIDevice.current.model
    switch deviceType
    {
    case "iPhone":
        return false
    case "iPod touch":
        return false
    case "iPad":
        return true
    default:
        return false
    }
}()

// MARK: -------------------------------- IsiPhoneX --------------------------------
let IsiPhoneX: Bool =
{
    if UIDevice.current.userInterfaceIdiom == .pad {
        return false
    }

    let size = UIScreen.main.bounds.size
    let notchValue: Int = Int(size.width/size.height * 100)

    if 216 == notchValue || 46 == notchValue {

        return true
    }

    return false

}()

// MARK: -------------------------- iPad Pro 11 判断 ------------------------------
let IsiPadPro11: Bool =
{
    if appDelegate.isLandscape() {
        return IsiPad && ((SCREENWIDTH == 1194 && SCREENHEIGHT == 834 ? true : false) || (SCREENWIDTH == 1336 && SCREENHEIGHT == 1024 ? true : false))
    } else {
        return IsiPad && ((SCREENWIDTH == 834 && SCREENHEIGHT == 1194 ? true : false) || (SCREENWIDTH == 1024 && SCREENHEIGHT == 1336 ? true : false))
    }
    
}()

// MARK: -------------------------------- SCREEN --------------------------------
var SCREENWIDTH: CGFloat { return UIScreen.main.bounds.width }
var SCREENHEIGHT: CGFloat { return UIScreen.main.bounds.height }
let DEGREE = CGFloat.pi/180
var STATUSBARHEIGHT: CGFloat { return IsiPhoneX ? 44 : 0 }
var NAVBARHEIGHT: CGFloat { return IsiPhoneX ? 88 : 44 }
var HOMEINDICATOR: CGFloat { return (IsiPhoneX || IsiPadPro11) ? 33 : 0}
var BOTTOMHEIGHT: CGFloat { return (IsiPhoneX || IsiPadPro11) ? 34 : 0}
var TopHeight: CGFloat { return IsiPhoneX ? 24 : 0}
var TABBAR: CGFloat { return IsiPhoneX ? 83 : 49}

// MARK: -------------------------------- Color --------------------------------
let NavGray = UIColor(r: 243, g: 241, b: 243)
