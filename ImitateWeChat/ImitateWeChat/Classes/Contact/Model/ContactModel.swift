//
//  ContactModel.swift
//  ImitateWeChat
//
//  Created by Xltt on 2022/10/14.
//

import UIKit
import Mantle
class ContactModel: MTLModel, MTLJSONSerializing {
    var iconName: String = ""
    var netName: String = ""
    
    static func jsonKeyPathsByPropertyKey() -> [AnyHashable : Any]! {
        return ["iconName": "iconName",
                "netName": "netName"]
    }
}
