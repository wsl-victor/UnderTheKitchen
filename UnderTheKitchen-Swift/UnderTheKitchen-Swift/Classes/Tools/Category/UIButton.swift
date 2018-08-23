//
//  UIButton.swift
//  UnderTheKitchen-Swift
//
//  Created by jyapp on 2018/8/23.
//  Copyright © 2018年 wsl. All rights reserved.
//

import Foundation
import UIKit

enum UTKImagePosition {
    case ImagePositionLeft  //图片在左，文字在右，默认
    case ImagePositionRight  //图片在右，文字在左
    case ImagePositionTop    //图片在上，文字在下
    case ImagePositionBottom  //图片在下，文字在上
}

extension UIButton {
    /**
     *  利用UIButton的titleEdgeInsets和imageEdgeInsets来实现文字和图片的自由排列
     *  注意：这个方法需要在设置图片和文字之后才可以调用，且button的大小要大于 图片大小+文字大小+spacing
     *
     *  @param spacing 图片和文字的间隔
     */
    func setImagePosition(position:UTKImagePosition,spacing:CGFloat){
        self.setTitle(self.currentTitle, for: UIControlState.normal)
        self.setImage(self.currentImage, for: UIControlState.normal)
        
        self.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        
        let imageWidth = self.imageView?.image?.size.width ?? 0
        let imageHeight = self.imageView?.image?.size.height ?? 0
        
        let rect = UIButton.sizeWithText(text: (self.titleLabel?.text) ?? "", font: UIFont.systemFont(ofSize: 12), size: CGSize.init(width: self.frame.size.width, height: self.frame.size.height))
        
        let labelWidth = rect.size.width
        let labelHeight = rect.size.height
        
        let  imageOffsetX = (imageWidth + labelWidth) / 2 - imageWidth / 2;//image中心移动的x距离
        let imageOffsetY = imageHeight / 2 + spacing / 2;//image中心移动的y距离
        let labelOffsetX = (imageWidth + labelWidth / 2) - (imageWidth + labelWidth) / 2;//label中心移动的x距离
        let labelOffsetY = labelHeight / 2 + spacing / 2;//label中心移动的y距离
        
        let tempWidth =   max(labelWidth, imageWidth);
        let changedWidth = labelWidth + imageWidth - tempWidth;
        let tempHeight = max(labelHeight, imageHeight);
        let changedHeight = labelHeight + imageHeight + spacing - tempHeight;
        
        switch position {
            case .ImagePositionLeft:
                self.imageEdgeInsets = UIEdgeInsetsMake(0, -spacing/2, 0, spacing/2);
                self.titleEdgeInsets = UIEdgeInsetsMake(0, spacing/2, 0, -spacing/2);
                self.contentEdgeInsets = UIEdgeInsetsMake(0, spacing/2, 0, spacing/2);
            case .ImagePositionRight:
                self.imageEdgeInsets = UIEdgeInsetsMake(0, labelWidth + spacing/2, 0, -(labelWidth + spacing/2));
                self.titleEdgeInsets = UIEdgeInsetsMake(0, -(imageWidth + spacing/2), 0, imageWidth + spacing/2);
                self.contentEdgeInsets = UIEdgeInsetsMake(0, spacing/2, 0, spacing/2);
            case .ImagePositionTop:
                self.imageEdgeInsets = UIEdgeInsetsMake(-imageOffsetY, imageOffsetX, imageOffsetY, -imageOffsetX);
                self.titleEdgeInsets = UIEdgeInsetsMake(labelOffsetY, -labelOffsetX, -labelOffsetY, labelOffsetX);
                self.contentEdgeInsets = UIEdgeInsetsMake(imageOffsetY, -changedWidth/2, changedHeight-imageOffsetY, -changedWidth/2);
            case .ImagePositionBottom:
                self.imageEdgeInsets = UIEdgeInsetsMake(imageOffsetY, imageOffsetX, -imageOffsetY, -imageOffsetX);
                self.titleEdgeInsets = UIEdgeInsetsMake(-labelOffsetY, -labelOffsetX, labelOffsetY, labelOffsetX);
                self.contentEdgeInsets = UIEdgeInsetsMake(changedHeight-imageOffsetY, -changedWidth/2, imageOffsetY, -changedWidth/2);
//            default:
//                self.imageEdgeInsets = UIEdgeInsetsMake(imageOffsetY, imageOffsetX, -imageOffsetY, -imageOffsetX);
//                self.titleEdgeInsets = UIEdgeInsetsMake(-labelOffsetY, -labelOffsetX, labelOffsetY, labelOffsetX);
//                self.contentEdgeInsets = UIEdgeInsetsMake(changedHeight-imageOffsetY, -changedWidth/2, imageOffsetY, -changedWidth/2);
        }
    }
    
    
    /**
     * 计算字符串长度
     */
    static func sizeWithText(text: String, font: UIFont, size: CGSize) -> CGRect {
        let attributes = [NSAttributedStringKey.font: font]
        let option = NSStringDrawingOptions.usesLineFragmentOrigin
        let rect:CGRect = text.boundingRect(with: size, options: option, attributes: attributes, context: nil)
        return rect;
    }
}
