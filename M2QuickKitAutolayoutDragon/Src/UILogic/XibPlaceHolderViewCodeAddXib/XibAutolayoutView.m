//
//  XibAutolayoutView.m
//  M2QuickKitAutolayoutDragon
//
//  Created by thatsoul on 15/8/20.
//  Copyright (c) 2015年 chenms.m2. All rights reserved.
//

#import "XibAutolayoutView.h"

@implementation XibAutolayoutView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        DDLogDebug(@"%@", self);
    }
    
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    
    DDLogDebug(@"%@", self);
}

@end
