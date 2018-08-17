//
//  UTKMailBoxController.m
//  UnderTheKitchen-OC
//
//  Created by jyapp on 2018/8/17.
//  Copyright © 2018年 wsl. All rights reserved.
//

#import "UTKMailBoxController.h"

@interface UTKMailBoxController ()

@end

@implementation UTKMailBoxController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setLeftTitleButtonTitle:@"" color:[UIColor blackColor] image:[UIImage imageNamed:@"writeMessage_22x22_"] position:UTKImagePositionRight action:@selector(rightNavOnClick)];
}

-(void)rightNavOnClick{
    
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
