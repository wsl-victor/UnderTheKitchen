//
//  UIButton+UTKExtensionPostion.h
//  UnderTheKitchen-OC
//
//  Created by jyapp on 2018/8/17.
//  Copyright © 2018年 wsl. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, UTKImagePosition) {
    UTKImagePositionLeft = 0,              //图片在左，文字在右，默认
    UTKImagePositionRight = 1,             //图片在右，文字在左
    UTKImagePositionTop = 2,               //图片在上，文字在下
    UTKImagePositionBottom = 3,            //图片在下，文字在上
};


@interface UIButton (UTKExtensionPostion)
/**
 *  利用UIButton的titleEdgeInsets和imageEdgeInsets来实现文字和图片的自由排列
 *  注意：这个方法需要在设置图片和文字之后才可以调用，且button的大小要大于 图片大小+文字大小+spacing
 *
 *  @param spacing 图片和文字的间隔
 */
- (void)setImagePosition:(UTKImagePosition)postion spacing:(CGFloat)spacing;

@end
