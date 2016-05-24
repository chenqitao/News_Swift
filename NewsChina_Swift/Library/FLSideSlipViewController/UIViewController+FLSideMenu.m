//
//  UIViewController+FLSideMenu.m
//  DS_Virgo
//
//  Created by chenqitao on 16/1/8.
//  Copyright © 2016年 manito. All rights reserved.
//

#import "UIViewController+FLSideMenu.h"
#import "NewsChina_Swift-Swift.h"

static NSString * const kFLSideSlipKey = @"FLSideSlipKey";
@implementation UIViewController (FLSideMenu)

- (FLSideSlipViewController *)sideSlipViewController {
    
    return [AppDelegate shared].menuViewController;
}

- (void)showLeftMenu{
//    [[UIApplication sharedApplication]setStatusBarStyle:UIStatusBarStyleDefault animated:YES];
    [self.sideSlipViewController showLeftViewController];
    [self setNeedsStatusBarAppearanceUpdate];
}

- (void)showRootVC:(UIViewController *)viewController animation:(BOOL)animation{
    [self.sideSlipViewController pushToNewViewController:viewController animation:animation];
}

- (void)backToRootVC {
    [(UINavigationController *)self.sideSlipViewController.fs_rootViewController popToRootViewControllerAnimated:YES];
   [(UINavigationController *)self.sideSlipViewController.fs_rootViewController setToolbarHidden:YES animated:YES];
    
}
@end
