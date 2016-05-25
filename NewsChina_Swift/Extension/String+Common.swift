//
//  String+Common.swift
//  NewsChina_Swift
//
//  Created by chenqitao on 16/5/25.
//  Copyright © 2016年 陈齐涛. All rights reserved.
//

import UIKit

extension String {
    func parseJSONStringToNSDictionary() -> NSDictionary {
        var dic : NSDictionary = NSDictionary()
        let JSONData = self.dataUsingEncoding(NSUTF8StringEncoding)
        do {
            try
                dic = NSJSONSerialization.JSONObjectWithData(JSONData!, options: NSJSONReadingOptions.MutableContainers) as! NSDictionary
            return dic
        } catch {
            print("error")
        }
        return dic
    }
}
