//
//  CommonColor.swift
//  UnderTheKitchen-Swift
//
//  Created by jyapp on 2018/8/23.
//  Copyright © 2018年 wsl. All rights reserved.
//

import Foundation
import UIKit

//透明度为1
func CommonColorGRB(r:CGFloat,g:CGFloat,b:CGFloat) ->UIColor {
    return UIColor.init(red: (r)/255.0, green:  (g)/255.0, blue:  (b)/255.0, alpha: 1.0)
}
//自定义透明度
func CommonColorGRBA(r:CGFloat,g:CGFloat,b:CGFloat,a:CGFloat) ->UIColor {
    return UIColor.init(red: (r)/255.0, green:  (g)/255.0, blue:  (b)/255.0, alpha: a)
}
////tabbar文字颜色
let   UTKTabBarTextColor =  CommonColorGRB(r:230,g:111,b:89)
