//
//  StringEx.swift
//  StringEx
//
//  Created by Ryo Nakano on 2015/02/25.
//  Copyright (c) 2015年 Peppermint Club. All rights reserved.
//

import UIKit

// 文字列の描画
class StringEx: UIView {
    
    // 描画時に呼ばれる
    override func drawRect(rect: CGRect) {
        // 画面サイズの取得
        let w = UIScreen.mainScreen().bounds.size.width
        let h = UIScreen.mainScreen().bounds.size.height
        drawString("画面サイズ \(Int(w))X\(Int(h))", x: 0, y: 20)
        
        // 文字サイズの取得
        let size = getStringSize("A")
        drawString("文字幅: \(Int(size.width))", x: 0, y: 20+26)
        
        // 12ドットの文字列の描画
        drawString("12dot", x: 0, y: 20+26*2, size: 12, color: UIColor(
            red: 255/255, green: 0/255, blue: 0/255, alpha: 1.0))
        
        // 16ドットの文字列の描画
        drawString("16dot", x: 0, y: 20+26*3, size: 16, color: UIColor(
            red: 0/255, green: 255/255, blue: 0/255, alpha: 1.0))
        
        // 24ドットの文字列の描画
        drawString("24dot", x: 0, y: 20+26*4, size: 24, color: UIColor(
            red: 0/255, green: 0/255, blue: 255/255, alpha: 1.0))
    }
    
    // 文字サイズの取得
    func getStringSize(str: String, size: Float = 24) -> CGSize {
        var attrs = [NSFontAttributeName: UIFont.systemFontOfSize(CGFloat(size))]
        let nsstr = str as NSString
        return nsstr.sizeWithAttributes(attrs)
    }
    
    // 文字列の描画
    func drawString(str: String, x: Int, y: Int, size: Float = 24, color: UIColor = UIColor.blackColor()) {
        var attrs = [
            NSFontAttributeName: UIFont.systemFontOfSize(CGFloat(size)),
                NSForegroundColorAttributeName: color]
        let nsstr = str as NSString
        nsstr.drawAtPoint(CGPointMake(CGFloat(x), CGFloat(y)), withAttributes: attrs)
    }
}
