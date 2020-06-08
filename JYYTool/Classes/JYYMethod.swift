//
//  JYYMethod.swift
//  JYYTool
//
//  Created by 俊洋洋 on 2020/6/1.
//

import UIKit
public class JYYTool{
    /// RGBA的颜色设置
   static public func RGB(_ r:CGFloat,_ g:CGFloat,_ b:CGFloat) -> UIColor {
        return UIColor(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: 1.0)
    }
    
    /// 颜色设置 带有透明度
    /// - Parameters:
    ///   - r:  red
    ///   - g:  green
    ///   - b:  black
    ///   - a:  透明度
   static public func RGBA(_ r:CGFloat, g:CGFloat, b:CGFloat, a:CGFloat) -> UIColor {
        return UIColor(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: a)
    }
    
    /// 十六进制颜色
    /// - Parameter hexValue: 16进制
   static public func ColorHEX(_ hexValue: Int) -> (UIColor) {
        return HEXA(hexValue: hexValue, a: 1.0)
    }
    
    /// 十六进制颜色 透明度
    /// - Parameters:
    ///   - hexValue: 16进制
    ///   - a: 透明度alpha
   static public func HEXA(hexValue: Int, a: CGFloat) -> (UIColor) {
        return UIColor(red: ((CGFloat)((hexValue & 0xFF0000) >> 16)) / 255.0,
                       green: ((CGFloat)((hexValue & 0xFF00) >> 8)) / 255.0,
                       blue: ((CGFloat)(hexValue & 0xFF)) / 255.0,
                       alpha: a)
    }
    /// UIColor颜色
    /// - Parameter color: return所传颜色的图片
    static public func getImageBy(color: UIColor) -> UIImage? {
            let rect = CGRect(x: 0.0, y: 0.0, width: 1.0, height: 1.0)
            UIGraphicsBeginImageContext(rect.size)
            let context = UIGraphicsGetCurrentContext()
            context?.setFillColor(color.cgColor)
            context?.fill(rect)
            let image = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
            return image ?? nil
        }
    
    /// 字体
    /// - Parameter font: font
   static public func FONT(font: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: font)
    }
    
    /// 控制台输出
    /// - Parameters:
    ///   - msg: msg
    ///   - file: 文件路径
    ///   - line:
    ///   - fn: 方法
   static public func ly<T>(_ msg: T,
                file: NSString = #file,
                line: Int = #line,
                fn: String = #function){
        #if DEBUG
        let prefix = "\(file.lastPathComponent)_\(fn)_\(line)"
        print(prefix,msg)
        #endif
    }
    


}


