//
//  UIViewController+FLSideMenu.h
//  DS_Virgo
//
//  Created by chenqitao on 16/1/8.
//  Copyright © 2016年 manito. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FLSideSlipViewController.h"
@class FLSideSlipViewController;
@interface UIViewController (FLSideMenu)
@property (nonatomic, strong, readonly) FLSideSlipViewController *sideSlipViewController;
- (void)showLeftMenu;
- (void)backToRootVC;
- (void)showRootVC:(UIViewController *)viewController animation:(BOOL)animation;
@end
