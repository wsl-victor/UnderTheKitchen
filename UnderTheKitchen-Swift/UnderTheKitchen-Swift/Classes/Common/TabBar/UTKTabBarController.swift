//
//  UTKTabBarController.swift
//  UnderTheKitchen-Swift
//
//  Created by jyapp on 2018/8/23.
//  Copyright © 2018年 wsl. All rights reserved.
//

import UIKit

class UTKTabBarController: UITabBarController {

    let UTKutkVc = UTKUnderTheKitchenController()
    let FairVc = UTKFairController()
    let CollectionVc = UTKCollectionController()
    let MailBoxVc = UTKMailBoxController()
    let MeVc = UTKMeController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate=self
        UITabBar.appearance().shadowImage = UIImage.init()
        UITabBar.appearance().backgroundImage=UIImage.init()
        
        self.addAllChildVcs()
        // Do any additional setup after loading the view.
    }
    
    
    func addAllChildVcs(){
        self.addOneChildVc(childVc: UTKutkVc, title: "下厨房", imageName: "tabADeselected_25x25_", selectedImageName: "tabASelected_25x25_")
        self.addOneChildVc(childVc: FairVc, title: "市集", imageName: "tabBDeselected_25x25_", selectedImageName: "tabBSelected_25x25_")
        self.addOneChildVc(childVc: CollectionVc, title: "收藏", imageName: "tabCDeselected_25x25_", selectedImageName: "tabCSelected_25x25_")
        self.addOneChildVc(childVc: MailBoxVc, title: "信箱", imageName: "tabDDeselected_25x25_", selectedImageName: "tabDSelected_25x25_")
        self.addOneChildVc(childVc: MeVc, title: "我", imageName: "tabEDeselected_25x25_", selectedImageName: "tabESelected_25x25_")
        
    }
    
    
    func addOneChildVc(childVc:UIViewController,title:String,imageName:String,selectedImageName:String){
        childVc.title = title
        let  imageNameNormal = UIImage.init(named: imageName)?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        childVc.tabBarItem.image = imageNameNormal
        
        let textAttrs = NSMutableDictionary()
        textAttrs[NSAttributedStringKey.foregroundColor] = UIColor.black
        textAttrs[NSAttributedStringKey.font] = UIFont.systemFont(ofSize: 10)
        childVc.tabBarItem.setTitleTextAttributes(textAttrs as? [NSAttributedStringKey : Any], for: UIControlState.normal)
        
        let selectedTexdAttrs = NSMutableDictionary()
        selectedTexdAttrs[NSAttributedStringKey.foregroundColor] = UTKTabBarTextColor
        selectedTexdAttrs[NSAttributedStringKey.font] = UIFont.systemFont(ofSize: 10)
        childVc.tabBarItem.setTitleTextAttributes(textAttrs as? [NSAttributedStringKey : Any], for: UIControlState.selected)
        
        let  imageNameSelected = UIImage.init(named: selectedImageName)?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        childVc.tabBarItem.selectedImage = imageNameSelected
        
        let nav = UTKNavigationController.init(rootViewController: childVc)
        
        self.addChildViewController(nav)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension UTKTabBarController : UITabBarControllerDelegate{
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        
    }
    
}
