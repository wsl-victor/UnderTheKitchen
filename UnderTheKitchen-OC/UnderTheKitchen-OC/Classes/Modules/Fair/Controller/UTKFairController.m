//
//  UTKFairController.m
//  UnderTheKitchen-OC
//
//  Created by jyapp on 2018/8/17.
//  Copyright © 2018年 wsl. All rights reserved.
//

#import "UTKFairController.h"

@interface UTKFairController ()

@end

@implementation UTKFairController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setRightTitleButtonTitle:@"" color:[UIColor blackColor] image:[UIImage imageNamed:@"shoppingCart_22x22_"] action:@selector(rightNavFairOnClick)];
  [self setLeftTitleButtonTitle:@"北京市" color:[UIColor grayColor] image:[UIImage imageNamed:@"location_14x14_"] position:UTKImagePositionTop action:@selector(leftNavLocationOnClick)];
    // Do any additional setup after loading the view.
}

-(void)rightNavFairOnClick{
    
}

-(void)leftNavLocationOnClick{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
