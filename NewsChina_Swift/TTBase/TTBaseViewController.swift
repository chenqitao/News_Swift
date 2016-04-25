//
//  TTBaseViewController.swift
//  NewsChina_Swift
//
//  Created by chenqitao on 16/4/25.
//  Copyright © 2016年 陈齐涛. All rights reserved.
//

import UIKit
enum NavigationControllerType {  //枚举导航栏类型
    case clearColor
    case yellowColor
}
class TTBaseViewController: UIViewController {

    var haveBack = false  //是否显示返回键
    var showNavi = false  //是否显示导航栏
    var showModal = false //是否弹出模态
    var hiddenNaviBar = false //是否使导航栏透明
    var showToolBar = false //是否显示toolBar
    var isPush = false //是否推出界面
    var isNight = false
    var backButton = UIButton()
    var language = NSString()
    var toolBar = UIView()
    var mTableView = UITableView()
    
    
    func creatUI() -> Void {  //创建UI
        
    }
    
    func creatData() -> Void {  //请求数据
        
    }
    
    func changeLanguage() -> Void {  //改变语言
        
    }
    
    func returnBtnTapped(sender:AnyObject) -> Void { //点击返回键
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
