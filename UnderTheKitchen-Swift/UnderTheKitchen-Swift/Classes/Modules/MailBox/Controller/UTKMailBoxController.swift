//
//  UTKMailBoxController.swift
//  UnderTheKitchen-Swift
//
//  Created by jyapp on 2018/8/23.
//  Copyright © 2018年 wsl. All rights reserved.
//

import UIKit

class UTKMailBoxController: UTKCommonController {

    override func viewDidLoad() {
        super.viewDidLoad()

         self.setLeftTitleButtonTitle(title: "", color: UIColor.gray, image: UIImage.init(named: "writeMessage_22x22_") ?? UIImage.init(), position: .ImagePositionRight, action: #selector(leftNavOnClick))
        // Do any additional setup after loading the view.
    }
    
    @objc func leftNavOnClick(){
        
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
