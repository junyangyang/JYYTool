//
//  LYMethod.swift
//  JYYTool
//
//  Created by 俊洋洋 on 2020/6/1.
//

import UIKit

/// RGBA的颜色设置
public func RGB(_ r:CGFloat,_ g:CGFloat,_ b:CGFloat) -> UIColor {
    
    return UIColor(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: 1.0)
    
}

public func RGBA(_ r:CGFloat, g:CGFloat, b:CGFloat, a:CGFloat) -> UIColor {
    
    return UIColor(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: a)
    
}

public func HEXA(hexValue: Int, a: CGFloat) -> (UIColor) {
    
    return UIColor(red: ((CGFloat)((hexValue & 0xFF0000) >> 16)) / 255.0,
                   green: ((CGFloat)((hexValue & 0xFF00) >> 8)) / 255.0,
                   blue: ((CGFloat)(hexValue & 0xFF)) / 255.0,
                   alpha: a)
    
}

public func RGB0X(_ hexValue: Int) -> (UIColor) {
    
    return HEXA(hexValue: hexValue, a: 1.0)
    
}

public func FONT(font: CGFloat) -> UIFont {
    return UIFont.systemFont(ofSize: font)
}
public func ly<T>(_ msg: T,
            file: NSString = #file,
            line: Int = #line,
            fn: String = #function){
    #if DEBUG
    let prefix = "\(file.lastPathComponent)_\(fn)_\(line)"
    print(prefix,msg)
    #endif
}

