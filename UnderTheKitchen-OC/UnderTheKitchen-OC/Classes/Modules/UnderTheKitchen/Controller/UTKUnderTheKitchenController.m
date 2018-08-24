//
//  UTKUnderTheKitchenController.m
//  UnderTheKitchen-OC
//
//  Created by jyapp on 2018/8/17.
//  Copyright © 2018年 wsl. All rights reserved.
//

#import "UTKUnderTheKitchenController.h"
#import "UTKNavigationController.h"
#import "UTKBasketViewController.h"
#import "UTKSearchBar.h"
#import "UTKUnderSearchMenuViewController.h"
@interface UTKUnderTheKitchenController ()


@end

@implementation UTKUnderTheKitchenController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setNavigationBar];
}


-(void)setNavigationBar{
    [self setRightTitleButtonTitle:@"" color:[UIColor blackColor] image:[UIImage imageNamed:@"buylistButtonImage_22x22_"] action:@selector(rightNavUnderTheKitchenOnClick)];
    [self setLeftTitleButtonTitle:@"" color:[UIColor blackColor] image:[UIImage imageNamed:@"homepageCreateRecipeButton_22x22_"] position:UTKImagePositionRight action:@selector(leftNavUnderTheKitchenOnClick)];
    
    UTKSearchBar *searchBar = [UTKSearchBar searchBarWithPlaceholder:@"搜索菜谱、食材"];
    self.navigationItem.titleView = searchBar;
    searchBar.searchBarShouldBeginEditingBlock = ^{
        /**
         UIModalPresentationFullScreen = 0,
         UIModalPresentationPageSheet NS_ENUM_AVAILABLE_IOS(3_2) __TVOS_PROHIBITED,
         UIModalPresentationFormSheet NS_ENUM_AVAILABLE_IOS(3_2) __TVOS_PROHIBITED,
         UIModalPresentationCurrentContext NS_ENUM_AVAILABLE_IOS(3_2),
         UIModalPresentationCustom NS_ENUM_AVAILABLE_IOS(7_0),
         UIModalPresentationOverFullScreen NS_ENUM_AVAILABLE_IOS(8_0),
         UIModalPresentationOverCurrentContext NS_ENUM_AVAILABLE_IOS(8_0),
         UIModalPresentationPopover NS_ENUM_AVAILABLE_IOS(8_0) __TVOS_PROHIBITED,
         UIModalPresentationBlurOverFullScreen __TVOS_AVAILABLE(11_0) __IOS_PROHIBITED __WATCHOS_PROHIBITED,
         UIModalPresentationNone
         **/
        UTKUnderSearchMenuViewController *searchMenuVc = [[UTKUnderSearchMenuViewController alloc] init];
        searchMenuVc.modalPresentationStyle = UIModalPresentationPopover;
        UTKNavigationController *navVc = [[UTKNavigationController alloc]
                                          initWithRootViewController:searchMenuVc];
        [self presentViewController:navVc animated:YES completion:nil];
    };
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
