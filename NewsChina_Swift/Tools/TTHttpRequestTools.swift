//
//  TTHttpRequestTools.swift
//  NewsChina_Swift
//
//  Created by chenqitao on 16/5/15.
//  Copyright © 2016年 陈齐涛. All rights reserved.
//

import UIKit
import Alamofire
typealias TTRequestSuccessBlock=(obj:AnyObject)->Void
typealias TTRequestFailedBlock = (error:NSError) -> Void
let APIKEY = "7e3ae7a4146887a9d5c479da54498e26"
class TTHttpRequestTools: NSObject {

    class var sharedInstance: TTHttpRequestTools {
        struct Static {
            static var onceToken: dispatch_once_t = 0
            static var instance: TTHttpRequestTools? = nil
        }
        dispatch_once(&Static.onceToken) {
            Static.instance = TTHttpRequestTools()
        }
        return Static.instance!
    }
    
    func getHttpRequest(url:URLStringConvertible,parmars:[String:AnyObject]?,successBock:TTRequestSuccessBlock,failedBlock:TTRequestFailedBlock) -> Void {
        Alamofire.request(.GET, url, parameters: parmars, headers:nil).responseJSON { (response) in
            switch response.result
            {
            case .Success:
                successBock(obj: response.description)
            case .Failure(let error):
                failedBlock(error: error) ; break
            }
        }
        
    }
    
    func postHttpRequest(url:URLStringConvertible,parmars:[String:AnyObject]?,successBock:TTRequestSuccessBlock,failedBlock:TTRequestFailedBlock) -> Void {
        Alamofire.request(.POST, url, parameters: parmars, headers:nil).responseJSON { (response) in
            switch response.result
            {
            case .Success:
                successBock(obj: response.description)
            case .Failure(let error):
                failedBlock(error: error) ; break
            }
        }
        
        
    }
    
    
    
}
