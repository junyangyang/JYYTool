//
//  JYYHUD.swift
//  YJDriver
//
//  Created by 俊洋洋 on 2020/6/12.
//  Copyright © 2020 俊洋洋. All rights reserved.
//

import UIKit

class JYYHUD: UIView {
    typealias AfterBlock = ()->()
    static var afterBlock: AfterBlock! = {}
    static var hud = MBProgressHUD()
    fileprivate static let view = UIApplication.shared.windows.last
    
    static func showBottomMsg(_ msg: String = "message",afterDelay delay: TimeInterval = 1.5){
        hud = MBProgressHUD.showAdded(to: view!, animated: true)
        hud.label.text = msg
        hud.mode = .text
        hud.offset = CGPoint(x: 0, y: MBProgressMaxOffset)
        hud.hide(animated: true, afterDelay: delay)
    }
    
    static func showMsg(_ msg: String = "message",afterDelay delay: TimeInterval = 1.5){
        hud = MBProgressHUD.showAdded(to: view!, animated: true)
        hud.label.text = msg
        hud.mode = .text
        hud.hide(animated: true, afterDelay: delay)
    }
    
    static func showLoading(_ msg: String = "",afterDelay delay: TimeInterval = 1.5){
        hud = MBProgressHUD.showAdded(to: view!, animated: true)
        hud.label.text = msg
        hud.hide(animated: true, afterDelay: delay)
    }
    
    static func showSuccess(_ msg: String = "成功",afterDelay delay: TimeInterval = 1.5,_ completion:@escaping AfterBlock = afterBlock ){
        hud = MBProgressHUD.showAdded(to: view!, animated: true)
        hud.label.text = msg
        hud.mode = .text
        let img = UIImage(named: "hud_success")
        hud.customView = UIImageView(image: img)
        hud.mode = .customView
        DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
            completion()
        }
        hud .hide(animated: true, afterDelay: delay)
    }
    
    static func showError(_ msg: String = "失败",afterDelay delay: TimeInterval = 1.5,_ completion:@escaping AfterBlock = afterBlock ){
           hud = MBProgressHUD.showAdded(to: view!, animated: true)
           hud.label.text = msg
           hud.mode = .text
           let img = UIImage(named: "hud_error")
           hud.customView = UIImageView(image: img)
           hud.mode = .customView
           
           DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
               completion()
           }
           hud .hide(animated: true, afterDelay: 1.5)
       }
    

   
    static func hidden(){
//        hub.removeFromSuperViewOnHide = true
        hud.hide(animated: true)
//        hub.hid
//        MBProgressHUD.hide(for:  UIApplication.shared.windows.last!, animated: true)
    }
}
