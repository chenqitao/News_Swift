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
    
    func setMineNav() -> Void {   //导航栏
        if hiddenNaviBar {
            if mTableView.contentOffset.y <= 0  {
                self.navigationController?.navigationBar.setBackgroundImage(UIImage.init(), forBarMetrics: UIBarMetrics.Default)
                self.navigationController?.navigationBar.shadowImage = UIImage.init()
                self.navigationController?.navigationBar.titleTextAttributes = [NSFontAttributeName:UIFont.systemFontOfSize(18),NSForegroundColorAttributeName:UIColor.whiteColor()]
                self.edgesForExtendedLayout = UIRectEdge.Top
            } else {
                self.navigationController?.navigationBar.setBackgroundImage(nil, forBarMetrics: UIBarMetrics.Default)
                self.navigationController?.navigationBar.shadowImage = nil
                self.navigationController?.navigationBar.titleTextAttributes = [NSFontAttributeName:UIFont.systemFontOfSize(18),NSForegroundColorAttributeName:UIColor.whiteColor()]
                self.edgesForExtendedLayout = UIRectEdge.None
            
            }
        } else {
            if TTUserDefaultTools.objectForKey(DSIsNightModel).boolValue == false {
                self.navigationController?.navigationBar.setBackgroundImage(UIImage.imageWithBackgroundColor(UIColor.whiteColor()), forBarMetrics: UIBarMetrics.Default)
                self.navigationController?.navigationBar.shadowImage = UIImage.imageWithBackgroundColor(UIColor.whiteColor())
                self.navigationController?.navigationBar.titleTextAttributes = [NSFontAttributeName:UIFont.systemFontOfSize(18),NSForegroundColorAttributeName:UIColor.redColor()]
            } else {
                self.navigationController?.navigationBar.setBackgroundImage(UIImage.imageWithBackgroundColor(DSNightColor), forBarMetrics: UIBarMetrics.Default)
                self.navigationController?.navigationBar.shadowImage = UIImage.imageWithBackgroundColor(DSNightColor)
                self.navigationController?.navigationBar.titleTextAttributes = [NSFontAttributeName:UIFont.systemFontOfSize(18),NSForegroundColorAttributeName:UIColor.whiteColor()]
            }
                self.edgesForExtendedLayout = UIRectEdge.None
        }
    }
    
    func setMineToolBar() -> Void {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
         creatUI()    //加载UI
         creatData()  //加载数据源
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        NSNotificationCenter.defaultCenter().removeObserver(self)
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
}
