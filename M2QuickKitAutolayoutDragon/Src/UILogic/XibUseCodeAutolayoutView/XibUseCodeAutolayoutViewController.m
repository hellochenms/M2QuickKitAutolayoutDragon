//
//  XibUseCodeAutolayoutViewController.m
//  M2QuickKitAutolayoutDragon
//
//  Created by thatsoul on 15/8/20.
//  Copyright (c) 2015年 chenms.m2. All rights reserved.
//

#import "XibUseCodeAutolayoutViewController.h"
#import <Masonry/Masonry.h>
#import "CodeAutolayoutView.h"

@interface XibUseCodeAutolayoutViewController ()
@property (weak, nonatomic) IBOutlet CodeAutolayoutView *codeAutolayoutViewInXib;
@property (nonatomic) CodeAutolayoutView *codeAutolayoutViewByCode;
@end

@implementation XibUseCodeAutolayoutViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        DDLogInfo(@"");
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    DDLogInfo(@"");
    
    self.codeAutolayoutViewInXib.backgroundColor = [UIColor redColor];
    
    self.codeAutolayoutViewByCode = [CodeAutolayoutView new];
    self.codeAutolayoutViewByCode.backgroundColor = [UIColor blueColor];
    [self.view addSubview:self.codeAutolayoutViewByCode];
    __weak typeof(self) weakSelf = self;
    [self.codeAutolayoutViewByCode mas_makeConstraints:^(MASConstraintMaker *make) {
        UIView *superView = [weakSelf.codeAutolayoutViewByCode superview];
        make.width.equalTo(@100);
        make.height.equalTo(@100);
        make.leading.equalTo(superView).with.offset(20);
        make.bottom.equalTo(superView).with.offset(-20);
    }];
}

@end
