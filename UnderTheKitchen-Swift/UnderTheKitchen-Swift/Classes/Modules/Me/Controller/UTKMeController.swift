//
//  UTKMeController.swift
//  UnderTheKitchen-Swift
//
//  Created by jyapp on 2018/8/23.
//  Copyright © 2018年 wsl. All rights reserved.
//

import UIKit

class UTKMeController: UTKCommonController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        self.setLeftTitleButtonTitle(title: "", color: UIColor.gray, image: UIImage.init(named: "homepageCreateRecipeButton_22x22_") ?? UIImage.init(), position: .ImagePositionRight, action: #selector(leftNavOnClick))
        
        self.setRightTitleButtonsImage(image: UIImage.init(named: "navFindFriendsImage_22x22_") ?? UIImage.init(), action: #selector(rightnavFindFriendsOnClick), withimage: UIImage.init(named: "rightPageSetting_22x22_") ?? UIImage.init(), withaction: #selector(rightNavPageSettingOnClick))
    }
    
    @objc func leftNavOnClick(){
        let settingVc = UTKMeSettingViewController()
        settingVc.title = "设置"
        self.navigationController?.pushViewController(settingVc, animated: true)
    }
    
    @objc func rightnavFindFriendsOnClick(){
        let settingVc = UTKMeSettingViewController()
        settingVc.title = "设置"
        self.navigationController?.pushViewController(settingVc, animated: true)
    }

    @objc func rightNavPageSettingOnClick(){
        let searchVc = UTKMeSearchFriendViewController()
        searchVc.title = "设置"
        self.navigationController?.pushViewController(searchVc, animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
