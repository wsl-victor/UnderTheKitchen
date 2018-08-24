//
//  UTKCommonController.m
//  UnderTheKitchen-OC
//
//  Created by jyapp on 2018/8/17.
//  Copyright © 2018年 wsl. All rights reserved.
//

#import "UTKCommonController.h"

@interface UTKCommonController ()

@end

@implementation UTKCommonController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view.
}






- (void)setRightTitleButtonTitle:(NSString *)title color:(UIColor *)color image:(UIImage *)image action:(SEL)action{
    UIButton *bt  = [UIButton buttonWithType:UIButtonTypeCustom];
    [bt setTitle:title forState:UIControlStateNormal];
    [bt setImage:image forState:UIControlStateNormal];
    [bt setTitle:title forState:UIControlStateHighlighted];
    [bt setImage:image forState:UIControlStateHighlighted];
    [bt setTitleColor:color forState:UIControlStateNormal];
    bt.titleLabel.font = [UIFont systemFontOfSize:15];
    
    [bt addTarget:self action:action forControlEvents:UIControlEventTouchUpInside];
    [bt sizeToFit];
    bt.imageEdgeInsets = UIEdgeInsetsMake(5, 0, -5, 0);
    UIBarButtonItem *btitem = [[UIBarButtonItem alloc] initWithCustomView:bt];
    self.navigationItem.rightBarButtonItems = @[btitem];
}

- (void)setRightTitleButtonsImage:(UIImage *)image action:(SEL)action withImage:(UIImage *)withimage withaction:(SEL)withaction {
    
    UIView *view =[[UIView alloc] initWithFrame:CGRectMake(0, 0, 80, 44)];
    UIButton *bt  = [UIButton buttonWithType:UIButtonTypeCustom];
    [bt setImage:image forState:UIControlStateNormal];
    [bt setImage:image forState:UIControlStateHighlighted];
    bt.titleLabel.font = [UIFont systemFontOfSize:15];
    [bt setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [bt addTarget:self action:action forControlEvents:UIControlEventTouchUpInside];
    [bt sizeToFit];
    bt.frame = CGRectMake(0, 0, 40, 44);
    //UIBarButtonItem *btitem = [[UIBarButtonItem alloc] initWithCustomView:bt];
//
//    UIBarButtonItem *negativeSpacer = [[UIBarButtonItem alloc]
//                                       initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace
//                                       target:nil action:nil];
//    negativeSpacer.width = 15;
    
    UIButton *withbt  = [UIButton buttonWithType:UIButtonTypeCustom];
    [withbt setImage:withimage forState:UIControlStateNormal];
    [withbt setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [withbt setImage:withimage forState:UIControlStateHighlighted];
    withbt.titleLabel.font = [UIFont systemFontOfSize:15];
    [withbt addTarget:self action:action forControlEvents:UIControlEventTouchUpInside];
    [withbt sizeToFit];
    withbt.frame = CGRectMake(80-40, 0, 40, 44);
    
    [view addSubview:bt];
    [view addSubview:withbt];
    
    UIBarButtonItem *withbtitem = [[UIBarButtonItem alloc] initWithCustomView:view];
    self.navigationItem.rightBarButtonItems =@[withbtitem];
}


- (void)setLeftTitleButtonTitle:(NSString *)title color:(UIColor *)color image:(UIImage *)image position:(UTKImagePosition)position action:(SEL)action{
    UIButton *bt  = [UIButton buttonWithType:UIButtonTypeCustom];
    [bt setTitle:title forState:UIControlStateNormal];
    [bt setImage:image forState:UIControlStateNormal];
    [bt setTitle:title forState:UIControlStateHighlighted];
    [bt setImage:image forState:UIControlStateHighlighted];
    [bt setTitleColor:color forState:UIControlStateNormal];
    bt.titleLabel.font = [UIFont systemFontOfSize:15];
    [bt addTarget:self action:action forControlEvents:UIControlEventTouchUpInside];
    [bt setImagePosition:position spacing:1.0];
    [bt sizeToFit]; bt.imageEdgeInsets = UIEdgeInsetsMake(5, 0, -5, 0);
    UIBarButtonItem *btitem = [[UIBarButtonItem alloc] initWithCustomView:bt];
    self.navigationItem.leftBarButtonItems = @[btitem];
    
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
