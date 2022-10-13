//
//  CommonDefine.swift
//  ImitateWeChat
//
//  Created by Xltt on 2022/10/13.
//

import Foundation
import UIKit

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
