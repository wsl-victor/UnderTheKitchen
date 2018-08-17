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
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:bt];
}

- (void)setRightTitleButtonsImage:(UIImage *)image action:(SEL)action withImage:(UIImage *)withimage withaction:(SEL)withaction {
    
    UIButton *bt  = [UIButton buttonWithType:UIButtonTypeCustom];
    [bt setImage:image forState:UIControlStateNormal];
    [bt setImage:image forState:UIControlStateHighlighted];
    bt.titleLabel.font = [UIFont systemFontOfSize:15];
    [bt addTarget:self action:action forControlEvents:UIControlEventTouchUpInside];
    [bt sizeToFit];
    
    UIButton *withbt  = [UIButton buttonWithType:UIButtonTypeCustom];
    [withbt setImage:withimage forState:UIControlStateNormal];
    [withbt setImage:withimage forState:UIControlStateHighlighted];
    withbt.titleLabel.font = [UIFont systemFontOfSize:15];
    [withbt addTarget:self action:action forControlEvents:UIControlEventTouchUpInside];
    [withbt sizeToFit];
    self.navigationItem.rightBarButtonItems =@[[[UIBarButtonItem alloc] initWithCustomView:bt],[[UIBarButtonItem alloc] initWithCustomView:withbt]];
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
    [bt sizeToFit];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:bt];
    
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
