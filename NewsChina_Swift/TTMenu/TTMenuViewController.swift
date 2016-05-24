//
//  TTMenuViewController.swift
//  NewsChina_Swift
//
//  Created by chenqitao on 16/4/28.
//  Copyright © 2016年 陈齐涛. All rights reserved.
//

import UIKit

class TTMenuViewController: TTBaseViewController {
   public var isRefresh: Bool?   /**< 判断是否是刷新状态，以便于加以动画*/
   public var firstSwipe: Bool?  /**< 第一次滑动 */
   public var isSetting: Bool?   /**< 是否设置界面*/
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func creatUI() {
        self.view.backgroundColor = UIColor.redColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
