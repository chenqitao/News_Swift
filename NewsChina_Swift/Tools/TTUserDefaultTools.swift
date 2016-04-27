//
//  TTUserDefaultTools.swift
//  NewsChina_Swift
//
//  Created by chenqitao on 16/4/27.
//  Copyright © 2016年 陈齐涛. All rights reserved.
//

import UIKit

class TTUserDefaultTools: NSObject {
    class func setObjectForKey(object:AnyObject,key:NSString) -> Void{
        NSUserDefaults.standardUserDefaults().setObject(object, forKey: key as String)
        NSUserDefaults.standardUserDefaults().synchronize()
    }
    
    class func objectForKey(key:NSString) -> AnyObject! {
        let obj = NSUserDefaults.standardUserDefaults().objectForKey(key as String)
        return obj
    }
    
    class func removeObjectForKey(key:NSString) -> Void {
        NSUserDefaults.standardUserDefaults().removeObjectForKey(key as String)
        NSUserDefaults.standardUserDefaults().synchronize()
    }
    
    class func isEmptyForKey(key:NSString) -> Bool {
        var isEmpty  = true
        let a = NSUserDefaults.standardUserDefaults().objectForKey(key as String)
        if (a != nil) && (a?.length > 0) && (TTUserDefaultTools.objectForKey(key) != nil) && !(TTUserDefaultTools.objectForKey(key).isEqualToString("(null)")) {
           isEmpty = false
        }
        return isEmpty
    }
}
