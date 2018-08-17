//
//  UTKCollectionController.m
//  UnderTheKitchen-OC
//
//  Created by jyapp on 2018/8/17.
//  Copyright © 2018年 wsl. All rights reserved.
//

#import "UTKCollectionController.h"

@interface UTKCollectionController ()

@end

@implementation UTKCollectionController

- (void)viewDidLoad {
    [super viewDidLoad];
    
      [self setRightTitleButtonTitle:@"创建菜单" color:[UIColor grayColor] image:[UIImage imageNamed:@""] action:@selector(rightNavCreateMenuOnClick)];
    // Do any additional setup after loading the view.
}

-(void)rightNavCreateMenuOnClick{
    
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
