//
//  ZZJBlockButton.h
//  ZZJBlockedButtonDemo
//
//  Created by chefuzzj on 16/7/4.
//  Copyright © 2016年 chefuzzj. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZZJBlockButton : UIButton
/**
 *  点击事件回调
 */
@property (nonatomic, copy) void(^tapHandler)();
/**
 *  快速创建带block回调的按钮
 *
 *  @param tapHandler 回调事件
 */
+ (instancetype)blockedButtonWithTapHandler:(void(^)())tapHandler;
/**
 *  快速创建带block回调的按钮
 *
 *  @param tapHandler 回调事件
 *  @param frame      位置信息
 */
+ (instancetype)blockedButtonWithTapHandler:(void(^)())tapHandler frame:(CGRect)frame;
/**
 *  快速创建带block回调的按钮,并添加到父控件
 *
 *  @param tapHandler 回调事件
 *  @param frame      位置信息
 *  @param superview  父控件
 */
+ (instancetype)blockedButtonWithTapHandler:(void(^)())tapHandler frame:(CGRect)frame addToSuperview:(UIView *)superview;
@end
