//
//  JYYConstants.swift
//  LYTool_Example
//
//  Created by 俊洋洋 on 2020/6/1.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit


public struct JYY{
    static public let userdefaults = UserDefaults.standard
    
    /// app版本号
    static public let appVersion = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString")
    ///随机色
    static public let randomColor = JYYTool.RGB(CGFloat(arc4random()%255),  CGFloat(arc4random()%255),  CGFloat(arc4random()%255))
    
    
    /// 默认图片
    static public let imageDefault = UIImage(named: "image_default")
    
    
    
    
    
    static public let mainSize = UIScreen.main.bounds
    static public let width = mainSize.width
    static public let height = mainSize.height
    static public let WIDTHSCALE6 = width/375.0
    static public let HEIGHTSCALE6 = width/667.0
    static public let navHeight : CGFloat = 44.0
    static public let statusHeight: CGFloat = ((iPhoneX_XS || iPhoneXSM) ? 44.0:20.0)
    static public let tabbarHeight: CGFloat = ((iPhoneX_XS || iPhoneXSM) ? 83.0:49.0)
    static public let safeArea_b: CGFloat = ((iPhoneX_XS || iPhoneXSM) ? 34.0:0.0)
    static public let viewHeight = (height - navHeight - statusHeight)
    
    
    
    /// 设备版本信息
    static public let deviceVersion = UIDevice.current.systemVersion
    

    static public let iPhone4 = (height  < 568 ? true : false)
    /// iPhone 5
    static public let iPhone5 = (height  == 568 ? true : false)
    /// iPhone 6
    static public let iPhone6 = (height  == 667 ? true : false)
    /// iphone 6P
    static public let iPhone6P = (height == 736 ? true : false)
    /// iphone X
    static public let iPhoneX_XS = (height == 812 ? true : false)
    static public let iPhoneXSM = (height == 896 ? true : false)
}



