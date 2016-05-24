//
//  Global.swift
//  NewsChina_Swift
//
//  Created by chenqitao on 16/4/27.
//  Copyright © 2016年 陈齐涛. All rights reserved.
//

import UIKit
import RxSwift
import SnapKit

public let ScreenWidth = UIScreen.mainScreen().bounds.size.width
public let ScreenHeight = UIScreen.mainScreen().bounds.size.height
public let iOSUIDevice = UIDevice.currentDevice().systemVersion
public let KeyWindow = UIApplication.sharedApplication().keyWindow
public let kIsPlus = UIScreen.mainScreen().bounds.size.width == 414.0
public let DSNightColor = UIColor.init(colorLiteralRed: 29/255.0, green: 29/255.0, blue: 29/255.0, alpha: 1)
//常量
public let DSIsNightModel = "mode" /**< 是否夜间模式*/
public let DSUserID = "user_id" /**< 用户id*/
public let DsIsNight = "isNight"
public let DSCacheFilePath = "URLCACHE" /**< 缓存文件拼接的路径*/
public let DSREGION = "US"
public let DSPartner = "1000000"
public let DSPartnerKey = "05565e6a859f406b8065401ec8c0b80d"


public let DSLoginApi = "/api/login/userLogin.do"  /**< 登陆api */
public let DSSectionListApi = "/api/article/sectionList.do"  /**< 文章类别列表api */
public let DSarticleListApi = "/api/article/articleList.do"  /**< 文章列表api */
public let DSArticleDetailApi = "/api/article/articleDetail.do"  /**< 文章详情api */
public let DSArticlePraiseApi = "/api/article/articlePraise.do"  /**< 文章点赞api */
public let DSArticleFavouriteApi = "/api/article/articleFavorite.do"  /**< 文章收藏api */
public let DSUserRegisterApi = "/api/login/userRegister.do"  /**< 邮箱注册api*/
public let DSActivateAccountApi = "/api/login/activateAccount.do"  /**< 邮箱激活api */
public let DSUserLoginApi = "/api/login/userLogin.do"  /**<  用户登录api */
public let DSForgetPasswordApi  = "/api/login/forgetPassword.do"  /**< 忘记密码api */
public let DSUpdatePasswordApi  = "/api/login/updatePassword.do"  /**< 修改密码api */
public let DSGetUserInfoApi = "/api/user/getUserInfo.do"  /**< 获取个人信息api/修改个人信息api/用户反馈api */
public let DSOtherLoginWayApi = "/api/thirdLogin/thirdLogin.do"  /**< 三方登录 */
public let DSForgetPwdLinkApi = "/api/login/forgetPasswordLink.do"  /**<  忘记密码链接api */
public let DSUploadUserImageApi = "/api/upload/uploadUserLogo.do"  /**< 上传用户头像 */
public let DSUpdateUserApi = "/api/user/updateUser.do"  /**< 修改个人信息 */
public let DSAtrticlOfflineApi = "/api/article/getOfflineArticleList.do"  /**< 离线文章 */
public let DSConditionsUrl = "termsofuse.html"  /**< 服务条款地址 */
public let DSPrivacyUrl = "privacypolicy.html"  /**< 隐私地址 */

