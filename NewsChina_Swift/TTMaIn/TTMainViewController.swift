//
//  TTMainViewController.swift
//  NewsChina_Swift
//
//  Created by chenqitao on 16/4/27.
//  Copyright © 2016年 陈齐涛. All rights reserved.
//

import UIKit

class TTMainViewController: TTBaseViewController,UITableViewDataSource,UITableViewDelegate  {
    private let mainCellIndetifer  = "mainCell"
    private let articleList:NSMutableArray = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func creatUI() {
        self.view.backgroundColor = UIColor.whiteColor();
        mTableView = UITableView()
        mTableView.delegate = self
        mTableView.dataSource = self
        mTableView.tableFooterView = UIView.init()
        mTableView.backgroundColor = UIColor.clearColor()
        mTableView.showsVerticalScrollIndicator = false
        mTableView.showsHorizontalScrollIndicator = false
        mTableView.separatorInset = UIEdgeInsetsMake(0, 10, 0, 10)
        mTableView.registerClass(TTMainCell.self, forCellReuseIdentifier:mainCellIndetifer)
        self.view.addSubview(mTableView)
        mTableView.snp_makeConstraints { (make) in
            make.top.bottom.left.right.equalTo(self.view!)
        }        
    }
    
    override func creatData() {
        let parmars:NSDictionary = ["section_id":"0",
                                    "content_type":"2",
                                    "region":"US",
                                    "page_size":"10",
                                    "current_page":"1"]
        TTHttpRequestTools.sharedInstance.getHttpRequest("http://api.newschinamag.com/api/article/articleList.do", parmars: parmars.getSignParmars() as? [String : AnyObject] , successBock: { (obj) in
            let dataArr:NSArray = (obj["data"]!!["article_list"] as? NSArray)!
            for dic in dataArr {
                let articleModel = (DictModelManager.sharedManager.objectWithDictionary(dic as! NSDictionary, cls:TTArticleModel.self) as? TTArticleModel)!
                self.articleList.addObject(articleModel)
               
         }
           self.mTableView.reloadData()
             print(self.articleList)
            }) { (error) in
             print(error)
        }
    }
    
    // MARK:- TableViewDelegateAndDataSource
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.articleList.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(mainCellIndetifer, forIndexPath: indexPath) as! TTMainCell
        configureCellAndIndexPath(cell, indexPath: indexPath)
        return cell
        
    }
    
    func configureCellAndIndexPath(mainCell:TTMainCell,indexPath:NSIndexPath) -> Void {
        let model:TTArticleModel = self.articleList[indexPath.row] as! TTArticleModel
        mainCell.titleLab.text = model.title;
        mainCell.timeLab.text = model.relative_time
        mainCell.angleIcon.kf_setImageWithURL(NSURL(string: model.section_file_url!)!, placeholderImage:nil)
        mainCell.articleIV.kf_setImageWithURL(NSURL(string:model.article_file_url!)!, placeholderImage: UIImage.init(named: "bg_default_pic_small"))
        mainCell.infoLab.text = model.summary
        mainCell.dateLab.text = "- \(model.publish_time) -"
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 200
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
