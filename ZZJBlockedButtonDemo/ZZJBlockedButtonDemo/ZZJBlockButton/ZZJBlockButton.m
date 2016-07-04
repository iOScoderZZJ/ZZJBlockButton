//
//  ZZJBlockButton.m
//  ZZJBlockedButtonDemo
//
//  Created by chefuzzj on 16/7/4.
//  Copyright © 2016年 chefuzzj. All rights reserved.
//

#import "ZZJBlockButton.h"

@implementation ZZJBlockButton

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    [self setup];
    
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self setup];
}

- (void)setup {
    [self addTarget:self action:@selector(tapped) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)tapped {
    if (_tapHandler) {
        _tapHandler();
    }
}

+ (instancetype)blockedButtonWithTapHandler:(void(^)())tapHandler {
    return [self blockedButtonWithTapHandler:tapHandler frame:CGRectNull addToSuperview:nil];
}

+ (instancetype)blockedButtonWithTapHandler:(void(^)())tapHandler frame:(CGRect)frame {
    return [self blockedButtonWithTapHandler:tapHandler frame:frame addToSuperview:nil];
}

+ (instancetype)blockedButtonWithTapHandler:(void(^)())tapHandler frame:(CGRect)frame addToSuperview:(UIView *)superview {
    ZZJBlockButton *button = [ZZJBlockButton new];
    button.tapHandler = tapHandler;
    
    if (!CGRectIsNull(frame)) {
        button.frame = frame;
    }
    
    if (superview) {
        [superview addSubview:button];
    }
    
    return button;
}

@end
