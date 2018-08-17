//
//  UTKUnderTheKitchenController.m
//  UnderTheKitchen-OC
//
//  Created by jyapp on 2018/8/17.
//  Copyright © 2018年 wsl. All rights reserved.
//

#import "UTKUnderTheKitchenController.h"
#import "UTKBasketViewController.h"
@interface UTKUnderTheKitchenController ()

@end

@implementation UTKUnderTheKitchenController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setRightTitleButtonTitle:@"" color:[UIColor blackColor] image:[UIImage imageNamed:@"buylistButtonImage_22x22_"] action:@selector(rightNavUnderTheKitchenOnClick)];
    [self setLeftTitleButtonTitle:@"" color:[UIColor blackColor] image:[UIImage imageNamed:@"homepageCreateRecipeButton_22x22_"] position:UTKImagePositionRight action:@selector(leftNavUnderTheKitchenOnClick)];
}

-(void)rightNavUnderTheKitchenOnClick{
    UTKBasketViewController *basketVc= [[UTKBasketViewController alloc] init];
    basketVc.title=@"菜篮子";
    [self.navigationController pushViewController:basketVc animated:YES];
}

-(void)leftNavUnderTheKitchenOnClick{
    
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
