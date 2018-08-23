//
//  UTKCommonController.swift
//  UnderTheKitchen-Swift
//
//  Created by jyapp on 2018/8/23.
//  Copyright © 2018年 wsl. All rights reserved.
//

import UIKit

class UTKCommonController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white

        // Do any additional setup after loading the view.
    }

    
    func setRightTitleButtonTitle(title:String,color:UIColor,image:UIImage,action:Selector ){
        let bt = UIButton()
        bt.setTitle(title, for: UIControlState.normal)
        bt.setImage(image, for: UIControlState.normal)
        bt.setTitle(title, for: UIControlState.highlighted)
        bt.setImage(image, for: UIControlState.highlighted)
        bt .setTitleColor(color, for: UIControlState.normal)
        bt.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        bt.sizeToFit()
        bt.addTarget(self, action:action , for: UIControlEvents.touchUpInside)
        let btitem = UIBarButtonItem.init(customView: bt)
        self.navigationItem.rightBarButtonItems = [btitem]
    }
    
    func setRightTitleButtonsImage(image :UIImage,action :Selector,withimage:UIImage,withaction:Selector ){
        
        let customView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 80, height: 44))
        let bt = UIButton()
        bt.setImage(image, for: UIControlState.normal)
        bt.setImage(image, for: UIControlState.highlighted)
        bt .setTitleColor(UIColor.black, for: UIControlState.normal)
        bt.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        bt.sizeToFit()
        bt.addTarget(self, action:action , for: UIControlEvents.touchUpInside)
        bt.frame=CGRect.init(x: 0, y: 0, width: 40, height: 44)
        
        let withbt = UIButton()
        withbt.setImage(withimage, for: UIControlState.normal)
        withbt.setImage(withimage, for: UIControlState.highlighted)
        withbt .setTitleColor(UIColor.black, for: UIControlState.normal)
        withbt.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        withbt.sizeToFit()
        withbt.addTarget(self, action:withaction , for: UIControlEvents.touchUpInside)
        withbt.frame=CGRect.init(x: 80-40, y: 0, width: 40, height: 44)
        
        customView.addSubview(bt)
        customView.addSubview(withbt)
        
        let withbtitem = UIBarButtonItem.init(customView: customView)
        self.navigationItem.rightBarButtonItems = [withbtitem]
    }
    
    
    
    
    func setLeftTitleButtonTitle(title:String,color:UIColor,image:UIImage,position:UTKImagePosition, action:Selector ){
        let bt = UIButton()
        bt.setTitle(title, for: UIControlState.normal)
        bt.setImage(image, for: UIControlState.normal)
        bt.setTitle(title, for: UIControlState.highlighted)
        bt.setImage(image, for: UIControlState.highlighted)
        bt .setTitleColor(color, for: UIControlState.normal)
        bt.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        bt.setImagePosition(position: position , spacing: 1.0)
        bt.sizeToFit()
        bt.addTarget(self, action:action , for: UIControlEvents.touchUpInside)
        let btitem = UIBarButtonItem.init(customView: bt)
        self.navigationItem.leftBarButtonItems = [btitem]
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
