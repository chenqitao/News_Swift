//
//  NSDictory+Common.swift
//  NewsChina_Swift
//
//  Created by chenqitao on 16/4/29.
//  Copyright © 2016年 陈齐涛. All rights reserved.
//

import UIKit

extension NSDictionary {
    func getSignParmars() -> NSDictionary {
        let mudic : NSMutableDictionary = NSMutableDictionary.init(dictionary: self)
        var parmars : NSDictionary = NSDictionary()
        
        mudic.setObject(DSREGION, forKey: "region")
        do {
        let jsonData =
            try NSJSONSerialization.dataWithJSONObject(mudic, options: NSJSONWritingOptions.PrettyPrinted)
        let jsonString = NSString.init(data: jsonData, encoding: NSUTF8StringEncoding)
        parmars =  ["partner":DSPartner,"data":jsonString!,"sign":jsonString!.md5(NSString.signStringWithSubString(jsonString!)),"arc":"\(NSDate.init().timeIntervalSince1970)"]
            return parmars
        }
        catch {
            print("error")
        }
      return parmars
    }
    
}


