//
//  UTKCommonController.h
//  UnderTheKitchen-OC
//
//  Created by jyapp on 2018/8/17.
//  Copyright © 2018年 wsl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UTKCommonController : UIViewController
- (void)setRightTitleButtonTitle:(NSString *)title color:(UIColor *)color image:(UIImage *)image action:(SEL)action;
- (void)setRightTitleButtonsImage:(UIImage *)image action:(SEL)action withImage:(UIImage *)withimage withaction:(SEL)withaction;
- (void)setLeftTitleButtonTitle:(NSString *)title color:(UIColor *)color image:(UIImage *)image position:(UTKImagePosition)position action:(SEL)action;
@end
