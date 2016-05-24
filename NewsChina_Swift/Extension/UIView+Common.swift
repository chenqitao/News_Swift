//
//  UIView+Common.swift
//  NewsChina_Swift
//
//  Created by chenqitao on 16/4/25.
//  Copyright © 2016年 陈齐涛. All rights reserved.
//

import Foundation
import UIKit
import ObjectiveC.runtime
private var tapReturnBlockKey:NSString = "tapreturnKey"
typealias tapBlock = (() -> ())?
extension UIView {
    
   private var tappedBlock: tapBlock{
        get {
            return (objc_getAssociatedObject(self, &tapReturnBlockKey) as! tapBlock)
        }
        set(newValue) {
            objc_setAssociatedObject(self, &tapReturnBlockKey, newValue as! AnyObject, .OBJC_ASSOCIATION_COPY_NONATOMIC)
        }
    
    }

    func ds_tappedWithBlock(block:tapBlock) -> Void {
        tappedBlock = block;
        let tapRecognizer = UITapGestureRecognizer.init(target: self, action:#selector(UIView.tapHandler(_:)))
        self.userInteractionEnabled = true
        self.addGestureRecognizer(tapRecognizer)
        
        
    }
    
    func tapHandler(gesture:UIGestureRecognizer) -> Void {
        if tappedBlock != nil {
            tappedBlock!()
        }
    }


}