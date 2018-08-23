//
//  UTKNavigationController.swift
//  UnderTheKitchen-Swift
//
//  Created by jyapp on 2018/8/23.
//  Copyright © 2018年 wsl. All rights reserved.
//

import UIKit

class UTKNavigationController: UINavigationController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let navBar = UINavigationBar.appearance()
        navBar.setBackgroundImage(UIImage(), for: .default)
        navBar.shadowImage = UIImage()
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if self.viewControllers.count>0 {
            viewController.hidesBottomBarWhenPushed = true
            let backBt = UIButton.init()
            backBt.setBackgroundImage(UIImage.init(named: "backStretchBackgroundNormal_22x22_"), for: UIControlState.normal)
            //backBt.frame.size = (backBt.currentImage?.size)!
            backBt.frame.size.width = (backBt.currentImage?.size.width) ?? 1
            backBt.frame.size.height = (backBt.currentImage?.size.height) ?? 1
            backBt.contentMode = UIViewContentMode.left
            backBt.addTarget(self, action: #selector(back), for: UIControlEvents.touchUpInside)
            let rightBar = UIBarButtonItem.init(customView: backBt)
            
            let nagationSpace = UIBarButtonItem.init(barButtonSystemItem: UIBarButtonSystemItem.fixedSpace, target: nil, action: nil)
            nagationSpace.width = -20
            
            viewController.navigationItem.leftBarButtonItems = [nagationSpace,rightBar]
        }
        super.pushViewController(viewController, animated: animated)
    }
    
    
    @objc func back(){
        self.popViewController(animated: true)
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
