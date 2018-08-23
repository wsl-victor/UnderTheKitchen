//
//  UTKUnderTheKitchenController.swift
//  UnderTheKitchen-Swift
//
//  Created by jyapp on 2018/8/23.
//  Copyright © 2018年 wsl. All rights reserved.
//

import UIKit

class UTKUnderTheKitchenController: UTKCommonController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.setRightTitleButtonTitle(title: "", color: UIColor.gray, image: UIImage.init(named: "buylistButtonImage_22x22_") ?? UIImage.init(), action: #selector(rightNavUnderTheKitchenOnClick))
        
        self.setLeftTitleButtonTitle(title: "", color: UIColor.gray, image: UIImage.init(named: "homepageCreateRecipeButton_22x22_") ?? UIImage.init(), position: .ImagePositionRight, action: #selector(leftNavUnderTheKitchenOnClick))
        // Do any additional setup after loading the view.
    }
    
    @objc func rightNavUnderTheKitchenOnClick(){
        let basketVc = UTKBasketViewController()
        basketVc.title = "菜篮子"
        self.navigationController?.pushViewController(basketVc, animated: true)
    }
    
    @objc func leftNavUnderTheKitchenOnClick(){
        
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
