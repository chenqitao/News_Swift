//
//  NSString+Common.swift
//  NewsChina_Swift
//
//  Created by chenqitao on 16/4/29.
//  Copyright © 2016年 陈齐涛. All rights reserved.
//

import UIKit

import Foundation

extension NSString {
    func md5(str:NSString) -> NSString {
        let string = str.cStringUsingEncoding(NSUTF8StringEncoding)
        let strLen = CUnsignedInt(str.lengthOfBytesUsingEncoding(NSUTF8StringEncoding))
        let digestLen = Int(CC_MD5_DIGEST_LENGTH)
        let result = UnsafeMutablePointer<CUnsignedChar>.alloc(digestLen)
        CC_MD5(string, strLen, result)
        let hash = NSMutableString()
        for i in 0 ..< digestLen {
            hash.appendFormat("%02x", result[i])
        }
        result.destroy()
        return String(format: hash as String)
    }
    
   class func signStringWithSubString(str:NSString) -> NSString {
        if str.isEqualToString("") {
            return "partner=\(DSPartner)&appkey=\(DSPartnerKey)"
        } else {
            return "partner=\(DSPartner)&appkey=\(DSPartnerKey)&data=\(str)"
        }
    }
    
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


