//
//  CodeAutolayoutView.m
//  M2QuickKitAutolayoutDragon
//
//  Created by thatsoul on 15/8/20.
//  Copyright (c) 2015年 chenms.m2. All rights reserved.
//

#import "CodeAutolayoutView.h"
#import <Masonry/Masonry.h>

@interface CodeAutolayoutView ()
@property (nonatomic) UIView *leftTopView;
@property (nonatomic) UIView *rightBottomView;
@end

@implementation CodeAutolayoutView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        DDLogDebug(@"%@", self);
        [self loadSubViews];
    }
    
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    
    DDLogDebug(@"%@", self);
    [self loadSubViews];
}

#pragma mark -
- (void)loadSubViews {
    self.leftTopView = [UIView new];
    self.leftTopView.backgroundColor = [UIColor lightGrayColor];
    [self addSubview:self.leftTopView];
    __weak typeof(self) weakSelf = self;
    [self.leftTopView mas_makeConstraints:^(MASConstraintMaker *make) {
        UIView *superView = [weakSelf.leftTopView superview];
        make.leading.equalTo(superView.mas_leading).with.offset(10);
        make.top.equalTo(superView.mas_top).with.offset(10);
    }];
    
    self.rightBottomView = [UIView new];
    self.rightBottomView.backgroundColor = [UIColor grayColor];
    [self addSubview:self.rightBottomView];
    [self.rightBottomView mas_makeConstraints:^(MASConstraintMaker *make) {
        UIView *superView = [weakSelf.rightBottomView superview];
        make.width.equalTo(weakSelf.leftTopView.mas_width);
        make.height.equalTo(weakSelf.leftTopView.mas_height);
        make.top.equalTo(weakSelf.leftTopView.mas_bottom).with.offset(10);
        make.leading.equalTo(weakSelf.leftTopView.mas_trailing).with.offset(10);
        make.bottom.equalTo(superView.mas_bottom).with.offset(-10);
        make.trailing.equalTo(superView.mas_trailing).with.offset(-10);
    }];
}

@end
