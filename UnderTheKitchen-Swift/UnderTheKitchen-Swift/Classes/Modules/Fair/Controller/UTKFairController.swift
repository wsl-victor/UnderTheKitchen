//
//  UTKFairController.swift
//  UnderTheKitchen-Swift
//
//  Created by jyapp on 2018/8/23.
//  Copyright © 2018年 wsl. All rights reserved.
//

import UIKit

class UTKFairController: UTKCommonController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setRightTitleButtonTitle(title: "", color: UIColor.gray, image: UIImage.init(named: "shoppingCart_22x22_") ?? UIImage.init(), action: #selector(rightNavFairOnClick))
        
        self.setLeftTitleButtonTitle(title: "北京市", color: UIColor.gray, image: UIImage.init(named: "location_14x14_") ?? UIImage.init(), position: .ImagePositionTop, action: #selector(leftNavLocationOnClick))
        
    }
    
    @objc func rightNavFairOnClick(){
        
    }
    
    @objc func leftNavLocationOnClick(){
        
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
