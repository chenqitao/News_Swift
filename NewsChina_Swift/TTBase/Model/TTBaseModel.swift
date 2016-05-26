//
//  TTBaseModel.swift
//  NewsChina_Swift
//
//  Created by chenqitao on 16/5/25.
//  Copyright © 2016年 陈齐涛. All rights reserved.
//

import UIKit
import Mantle
class TTBaseModel:MTLModel,MTLJSONSerializing {
    static func JSONKeyPathsByPropertyKey() -> [NSObject : AnyObject]! {
        return [:]
    }
}
