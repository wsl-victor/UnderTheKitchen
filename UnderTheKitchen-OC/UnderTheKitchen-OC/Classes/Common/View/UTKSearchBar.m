//
//  UTKSearchBar.m
//  UnderTheKitchen-OC
//
//  Created by jyapp on 2018/8/24.
//  Copyright © 2018年 wsl. All rights reserved.
//

#import "UTKSearchBar.h"
@interface UTKSearchBar () <UISearchBarDelegate>

@end

@implementation UTKSearchBar


+ (UTKSearchBar *)searchBarWithPlaceholder:(NSString *)placeholder {
    UTKSearchBar *searchBar = [[UTKSearchBar alloc] init];
    searchBar.delegate = searchBar;
    searchBar.placeholder = placeholder;
//    searchBar.tintColor = UIColor.redColor;
//    searchBar.barTintColor = UIColor.redColor;
    [searchBar setImage:[UIImage imageNamed:@"searchIcon_22x22_"] forSearchBarIcon:UISearchBarIconSearch state:UIControlStateNormal];
    UIView *searchBarSub = searchBar.subviews[0];
    for (UIView *subView in searchBarSub.subviews) {

        if ([subView isKindOfClass:NSClassFromString(@"UISearchBarTextField")]) {
            [subView setBackgroundColor:UTKSearchBarColor];
        }

        if ([subView isKindOfClass:NSClassFromString(@"UISearchBarBackground")]) {
            [subView removeFromSuperview];
        }
    }
    return searchBar;
}


- (BOOL)searchBarShouldBeginEditing:(UISearchBar *)searchBar {
    !self.searchBarShouldBeginEditingBlock ? : self.searchBarShouldBeginEditingBlock();
    return YES;
}

- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText {
    !self.searchBarTextDidChangedBlock ? : self.searchBarTextDidChangedBlock();
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    !self.searchBarDidSearchBlock ? : self.searchBarDidSearchBlock();
}

@end
