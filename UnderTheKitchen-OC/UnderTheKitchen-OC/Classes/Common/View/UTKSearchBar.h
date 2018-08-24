//
//  UTKSearchBar.h
//  UnderTheKitchen-OC
//
//  Created by jyapp on 2018/8/24.
//  Copyright © 2018年 wsl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UTKSearchBar : UISearchBar

@property (nonatomic, copy) void (^searchBarShouldBeginEditingBlock)(); // 点击回调
@property (nonatomic, copy) void (^searchBarTextDidChangedBlock)();     // 编辑回调
@property (nonatomic, copy) void (^searchBarDidSearchBlock)();          // 编辑回调


+ (UTKSearchBar *)searchBarWithPlaceholder:(NSString *)placeholder;


@end
