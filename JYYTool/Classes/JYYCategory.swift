//
//  JYYCategory.swift
//  YJDriver
//
//  Created by 俊洋洋 on 2020/6/16.
//  Copyright © 2020 俊洋洋. All rights reserved.
//

import UIKit

extension UIView{
    ///x
   public var x: CGFloat{
        get{
            return frame.origin.x
        }
        set{
            var newFrame = frame
            newFrame.origin.x = newValue
            frame = newFrame
        }
    }
    
    /// y
   public var y: CGFloat{
        get{
            return frame.origin.y
        }
        set{
            var newFrame = frame
            newFrame.origin.y = newValue
            frame = newFrame
        }
    }
    
    /// 高度
   public var height: CGFloat {
        get {
            return frame.size.height
        }
        set {
            var newFrame: CGRect = frame
            newFrame.size.height = newValue
            frame                 = newFrame
        }
    }
    
    /// 宽度
   public var width: CGFloat{
        get{
            return frame.size.width
        }
        set{
            var newFrame: CGRect = frame
            newFrame.size.width = newValue
            frame = newFrame
        }
    }
    
    /// size -> CGSIze(width,height)
   public var size: CGSize{
        get{
            return frame.size
        }
        set{
            var newFrame: CGRect = frame;
            newFrame.size = newValue
            frame = newFrame
        }
    }
    
   public var centerX: CGFloat{
        get{
            return center.x
        }
        set{
            var newCenter: CGPoint = center;
            newCenter.x = newValue
            center = newCenter
        }
    }
    
   public var centerY: CGFloat{
        get{
            return center.y
        }
        set{
            var newCenter: CGPoint = center
            newCenter.y = newValue
            center = newCenter
        }
    }
    
   public var centerP: CGPoint{
        get{
            return center
        }
        set{
            center = newValue
        }
        
    }
   public var origin: CGPoint{
        get{
            return CGPoint(x: frame.origin.x, y: frame.origin.y)
        }set{
            let size: CGSize = frame.size
//            point = newValue
            frame = CGRect(origin: newValue, size: size)
        }
    }
}
//MARK: UIView_VC Category
extension UIView{
   public func currentNavViewController() -> UINavigationController? {
        var n = next
        while n != nil {
            if n is UINavigationController {
                return n as? UINavigationController
            }
            n = n?.next
        }
        return nil
    }
    
   public func currentVC() -> UIViewController? {
        var n = next
        while n != nil {
            if n is UIViewController {
                return n as? UIViewController
            }
            n = n?.next
        }
        return nil
    }
}
extension UIView{
    
    /// 垂直方向下的渐变
    /// - Parameters:
    ///   - startColors: 开始颜色
    ///   - endColor: 结束颜色
   public func addGradualColorVertical(startColors: UIColor,endColor: UIColor){
        let layer = CAGradientLayer()
        layer.frame = self.bounds
        layer.borderWidth = 0
        layer.colors = [startColors.cgColor,endColor.cgColor]
        layer.locations = [0.0,1.0]
        self.layer.insertSublayer(layer, at: 0)
    }
    
    /// 水平方向下的渐变
    /// - Parameters:
    ///   - startColors: 开始颜色
    ///   - endColor: 结束颜色
   public func addGradualColorHorizontal(startColors: UIColor,endColor: UIColor){
        let layer = CAGradientLayer()
        layer.frame = self.bounds
        layer.borderWidth = 0
        layer.colors = [startColors.cgColor,endColor.cgColor]
        layer.locations = [0.0,1.0]
        layer.startPoint = CGPoint(x: 0, y: 0.5);//（0，0）表示从左上角开始变化。默认值是(0.5,0.0)表示从x轴为中间，y为顶端的开始变化
        layer.endPoint = CGPoint(x: 1, y: 0.5)
        self.layer.insertSublayer(layer, at: 0)
    }
}


//MARK: String Category
extension String{
    public func getHeightByFont(font: UIFont,width: CGFloat = JYY.width) -> CGFloat{
        let textSize = self.boundingRect(with: CGSize(width: width, height: CGFloat(MAXFLOAT)), options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font:font], context: nil)
        return textSize.height
    }
        // base64编码
    public func toBase64() -> String? {
        if let data = self.data(using: .utf8) {
            return data.base64EncodedString()
        }
        return nil
    }

    // base64解码
    public func fromBase64() -> String? {
        if let data = Data(base64Encoded: self) {
            return String(data: data, encoding: .utf8)
        }
        return nil
    }
}
