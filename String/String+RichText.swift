//
//  String+RichText.swift
//  PerfectShapeMerchant
//
//  Created by Ada Wong on 10/10/2017.
//  Copyright © 2017  . All rights reserved.
//

import UIKit

extension String {
    
    /**
     Attributed string display a rich text
     */
    func richTextAttributedString(withFont font: UIFont) -> NSMutableAttributedString {
        do {
            let fontStr = String(format: "<style>body{font-family: '%@'; font-size:%fpx;}</style>", font.fontName, font.pointSize)
            let str = self.appending(fontStr)
            guard let data = str.data(using: .unicode) else { return NSMutableAttributedString(string: self) }
            
            let options: [NSAttributedString.DocumentReadingOptionKey : Any] = [
                NSAttributedString.DocumentReadingOptionKey.documentType: NSAttributedString.DocumentType.html
            ]
            let attrStr = try NSMutableAttributedString(data: data, options: options, documentAttributes: nil)

            return attrStr
        } catch {
            return NSMutableAttributedString(string: self)
        }
    }
    
}
