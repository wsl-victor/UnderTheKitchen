//
//  CommonColor.h
//  UnderTheKitchen-OC
//
//  Created by jyapp on 2018/8/17.
//  Copyright © 2018年 wsl. All rights reserved.
//

#ifndef CommonColor_h
#define CommonColor_h

//透明度为1
#define CommonColorRGB(R,G,B) [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:1]
//自定义透明度
#define CommonColorRGB_alpha(R,G,B,A) [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:A]


//tabbar文字颜色
#define  UTKTabBarTextColor   CommonColorRGB(230,111,89)

#endif /* CommonColor_h */
