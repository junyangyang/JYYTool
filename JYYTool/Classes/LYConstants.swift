//
//  LYConstants.swift
//  LYTool_Example
//
//  Created by 俊洋洋 on 2020/6/1.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit

struct LYConstants {
    static let userdefaults = UserDefaults.standard
}

struct LYFrame {
    static let mainSize = UIScreen.main.bounds
    static let width = mainSize.width
    static let height = mainSize.height
    
    static let WIDTHSCALE6 = width/375.0
    static let HEIGHTSCALE6 = width/667.0
    
    static let navHeight : CGFloat = 44.0
    static let statusHeight: CGFloat = ((LYDevice.iPhoneX_XS || LYDevice.iPhoneXSM) ? 44.0:20.0)
    static let tabbarHeight: CGFloat = ((LYDevice.iPhoneX_XS || LYDevice.iPhoneXSM) ? 83.0:49.0)

    static let safeArea_b: CGFloat = ((LYDevice.iPhoneX_XS || LYDevice.iPhoneXSM) ? 34.0:0.0)

    static let viewHeight = (height - navHeight - statusHeight)
}

struct LYDevice{
    static let version = UIDevice.current.systemVersion
    
    static let screenHeight = LYFrame.height

    static let iPhone4 = (screenHeight  < 568 ? true : false)
    
    /// iPhone 5
    static let iPhone5 = screenHeight  == 568 ? true : false
    
    /// iPhone 6
    static let iPhone6 = screenHeight  == 667 ? true : false
    
    /// iphone 6P
    static let iPhone6P = screenHeight == 736 ? true : false
    
    /// iphone X
    static let iPhoneX_XS = screenHeight == 812 ? true : false
    
    
    static let iPhoneXSM = screenHeight == 896 ? true : false

}
