//
//  UTKTabBarController.m
//  UnderTheKitchen-OC
//
//  Created by jyapp on 2018/8/17.
//  Copyright © 2018年 wsl. All rights reserved.
//

#import "UTKTabBarController.h"

#import "UTKNavigationController.h"

#import "UTKUnderTheKitchenController.h"//下厨房
#import "UTKFairController.h"//市集
#import "UTKMailBoxController.h"//信箱
#import "UTKCollectionController.h"//收藏
#import "UTKMeController.h"//我

@interface UTKTabBarController ()<UITabBarControllerDelegate>


@property (nonatomic, weak) UTKUnderTheKitchenController *UTKVc;
@property (nonatomic, weak) UTKFairController *FairVc;
@property (nonatomic, weak) UTKCollectionController *CollectionVc;
@property (nonatomic, weak) UTKMailBoxController *MailBoxVc;
@property (nonatomic, weak) UTKMeController *MeVc;

@property (nonatomic, weak) UIViewController *lastSelectedViewContoller;


@end

@implementation UTKTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.delegate = self;
    [[UITabBar appearance] setShadowImage:[UIImage new]];
    
    [[UITabBar appearance] setBackgroundImage:[[UIImage alloc]init]];
    [self addAllChildVcs];
}
/**
 *  添加所有的子控制器
 */
- (void)addAllChildVcs
{
    UTKUnderTheKitchenController *UTKVc = [[UTKUnderTheKitchenController alloc] init];
    [self addOneChlildVc:UTKVc title:@"下厨房" imageName:@"tabADeselected_25x25_" selectedImageName:@"tabASelected_25x25_"];
    self.UTKVc = UTKVc;
    self.lastSelectedViewContoller = UTKVc;
    
    UTKFairController *FairVc = [[UTKFairController alloc] init];
    [self addOneChlildVc:FairVc title:@"市集" imageName:@"tabBDeselected_25x25_" selectedImageName:@"tabBSelected_25x25_"];
    self.FairVc = FairVc;
    
    
    UTKCollectionController *CollectionVc = [[UTKCollectionController alloc] init];
    [self addOneChlildVc:CollectionVc title:@"收藏" imageName:@"tabCDeselected_25x25_" selectedImageName:@"tabCSelected_25x25_"];
    self.CollectionVc = CollectionVc;
    
    UTKMailBoxController *MailBoxVc = [[UTKMailBoxController alloc] init];
    [self addOneChlildVc:MailBoxVc title:@"信箱" imageName:@"tabDDeselected_25x25_" selectedImageName:@"tabDSelected_25x25_"];
    self.MailBoxVc=MailBoxVc;
    
    UTKMeController *MeVc = [[UTKMeController alloc] init];
    [self addOneChlildVc:MeVc title:@"我" imageName:@"tabEDeselected_25x25_" selectedImageName:@"tabESelected_25x25_"];
    self.MeVc=MeVc;
    
    
}

/**
 *  添加一个子控制器
 *
 *  @param childVc           子控制器对象
 *  @param title             标题
 *  @param imageName         图标
 *  @param selectedImageName 选中的图标
 */
- (void)addOneChlildVc:(UIViewController *)childVc title:(NSString *)title imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName
{
    // 设置标题
    childVc.title = title;
     UIImage *imageNameNormal = [UIImage imageNamed:imageName];
    
     imageNameNormal=[imageNameNormal  imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    // 设置图标
    childVc.tabBarItem.image = imageNameNormal;
    
    // 设置tabBarItem的普通文字颜色
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
    textAttrs[NSForegroundColorAttributeName]=[UIColor blackColor];
    textAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:10];
    [childVc.tabBarItem setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
    
    // 设置tabBarItem的选中文字颜色
    NSMutableDictionary *selectedTextAttrs = [NSMutableDictionary dictionary];
    selectedTextAttrs[NSForegroundColorAttributeName] = UTKTabBarTextColor;
    [childVc.tabBarItem setTitleTextAttributes:selectedTextAttrs forState:UIControlStateSelected];
    
    // 设置选中的图标
    UIImage *selectedImage = [UIImage imageNamed:selectedImageName];
     selectedImage=[selectedImage    imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    childVc.tabBarItem.selectedImage = selectedImage;
    
    // 添加为tabbar控制器的子控制器
    UTKNavigationController *nav = [[UTKNavigationController alloc] initWithRootViewController:childVc];
    [self addChildViewController:nav];
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
