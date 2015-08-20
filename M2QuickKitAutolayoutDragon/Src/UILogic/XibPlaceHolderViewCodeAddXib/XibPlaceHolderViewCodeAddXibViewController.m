//
//  XibPlaceHolderViewCodeAddXibViewController.m
//  M2QuickKitAutolayoutDragon
//
//  Created by thatsoul on 15/8/20.
//  Copyright (c) 2015年 chenms.m2. All rights reserved.
//

#import "XibPlaceHolderViewCodeAddXibViewController.h"
#import "XibAutolayoutView.h"
#import <Masonry/Masonry.h>

@interface XibPlaceHolderViewCodeAddXibViewController ()
@property (weak, nonatomic) IBOutlet UIView *placeHolderArea;
@property (nonatomic) XibAutolayoutView *xibAutolayoutView;
@end

@implementation XibPlaceHolderViewCodeAddXibViewController

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
    
    self.xibAutolayoutView = [[[NSBundle mainBundle] loadNibNamed:@"XibAutolayoutView" owner:nil options:nil] firstObject];
    [self.placeHolderArea addSubview:self.xibAutolayoutView];
    __weak typeof(self) weakSelf = self;
    [self.xibAutolayoutView mas_makeConstraints:^(MASConstraintMaker *make) {
        UIView *superView = [weakSelf.xibAutolayoutView superview];
        make.edges.equalTo(superView).with.insets(UIEdgeInsetsZero);
    }];
}

@end
