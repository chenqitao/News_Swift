//
//  TTMainView.swift
//  NewsChina_Swift
//
//  Created by chenqitao on 16/4/28.
//  Copyright © 2016年 陈齐涛. All rights reserved.
//

import UIKit


class TTMainView: UIView {


}

class TTMainCell: UITableViewCell {
  
    
    private var isAlpha : Bool? {
        get {
          return self.isAlpha
        
        }
        set (value){
            if ((value?.boolValue)==true) {
                articleIV.alpha = 1
                titleLab.alpha = 1
                infoLab.alpha = 1
                dateLab.alpha = 1
            } else {
                articleIV.alpha = 0
                titleLab.alpha = 0
                infoLab.alpha = 0
                dateLab.alpha = 0
            }
        }
    
    }
    //MARK: - 初始化子控件
    private lazy var articleIV: UIImageView = {
        let imageIV = UIImageView()
        imageIV.contentMode = UIViewContentMode.ScaleAspectFill
        return imageIV
    }()
    
     lazy var dateLab: UILabel = {
        let label = UILabel()
        label.textAlignment = NSTextAlignment.Center
        label.font = UIFont.systemFontOfSize(16)
        return label
    }()

    private lazy var titleLab: UILabel = {
        let titleLabel = UILabel()
        titleLabel.font = UIFont.systemFontOfSize(16)
        titleLabel.numberOfLines = 2
        return titleLabel
    }()
    
    private lazy var infoLab: UILabel = {
        let infoLabel = UILabel()
        infoLabel.font = UIFont.systemFontOfSize(13)
        infoLabel.numberOfLines = 3
        return infoLabel
    }()
    
    private lazy var angleIconBG: UIImageView = {
        let angleBgIV = UIImageView()
        angleBgIV.image = UIImage.init(named: "shadow_main")
        return angleBgIV
    }()
    
    private lazy var angleIcon: UIImageView = {
        let angleIV = UIImageView()
        return angleIV
    }()
    
    private lazy var timeLab: UILabel = {
        let timeLabel = UILabel()
        timeLabel.font = UIFont.systemFontOfSize(12)
        timeLabel.textColor = UIColor.whiteColor()
        return timeLabel
    }()
    
   override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
       super.init(style: style, reuseIdentifier: reuseIdentifier)
        creatUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func creatUI() -> Void {
        self.contentView.addSubview(dateLab)
        self.contentView.addSubview(articleIV)
        self.contentView.addSubview(titleLab)
        self.contentView.addSubview(infoLab)
        self.contentView.addSubview(angleIconBG)
        self.contentView.addSubview(angleIcon)
        self.contentView.addSubview(timeLab)
        
        dateLab.snp_makeConstraints { (make) in
            make.top.equalTo(self.contentView).offset(10)
            make.left.equalTo(self.contentView).offset(0)
            make.right.equalTo(self.contentView).offset(0)
        }
        
        articleIV.snp_makeConstraints { (make) in
            make.centerX.equalTo(self.contentView)
            make.top.equalTo(dateLab.snp_bottom).offset(10)
            make.size.equalTo(CGSizeMake(ScreenWidth-20, 190))
        }
        
        angleIcon.snp_makeConstraints { (make) in
            make.top.equalTo(articleIV.snp_top)
            make.left.equalTo(articleIV.snp_left)
            make.size.equalTo(CGSizeMake(125, 28.5))
        }
        
        angleIconBG.snp_makeConstraints { (make) in
            make.top.left.width.height.equalTo(articleIV)
        }
        
        timeLab.snp_makeConstraints { (make) in
            make.top.equalTo(articleIV.snp_top).offset(5)
            make.right.equalTo(articleIV.snp_right).offset(-5)
        }
        
        titleLab.snp_makeConstraints { (make) in
            make.centerX.equalTo(self.contentView)
            make.top.equalTo(articleIV.snp_bottom).offset(9)
            make.bottom.equalTo(infoLab.snp_top).offset(-9)
        }
        
        infoLab.snp_makeConstraints { (make) in
            make.top.equalTo(titleLab.snp_bottom).offset(9)
            make.centerX.equalTo(self.contentView)
            make.width.equalTo(ScreenWidth - 2*10)
            make.bottom.equalTo(self.contentView).offset(9)
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        contentView.layoutIfNeeded()
        infoLab.preferredMaxLayoutWidth = CGRectGetWidth(infoLab.frame)
    }
    
}
