//
//  TTMainViewController.swift
//  NewsChina_Swift
//
//  Created by chenqitao on 16/4/27.
//  Copyright © 2016年 陈齐涛. All rights reserved.
//

import UIKit

class TTMainViewController: TTBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("终于进来了")
        // Do any additional setup after loading the view.
    }
    
    override func creatUI() {
        self.view.backgroundColor = UIColor.whiteColor();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
