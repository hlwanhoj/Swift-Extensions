//
//  UIColor+Hex.swift
//  OOOSH
//
//  Created by Ho Lun Wan on 16/10/2017.
//  Copyright © 2017 Keysoc. All rights reserved.
//

import UIKit

extension UIColor {
    
    convenience init(netHex: Int, alpha: CGFloat) {
        self.init(red:(netHex >> 16) & 0xff, green:(netHex >> 8) & 0xff, blue:netHex & 0xff, alpha: alpha)
    }
    convenience init(netHex: Int) {
        self.init(netHex: netHex, alpha: 1.0)
    }
    
    convenience init(hexString: String) {
        let plainHexString = hexString.replacingOccurrences(of: "#", with: "").trimmingCharacters(in: .whitespacesAndNewlines)
        
        let scanner = Scanner(string: plainHexString)
        scanner.scanLocation = 0
        
        var rgbValue: UInt64 = 0
        
        scanner.scanHexInt64(&rgbValue)
        
        let r = (rgbValue & 0xff0000) >> 16
        let g = (rgbValue & 0xff00) >> 8
        let b = rgbValue & 0xff
        
        self.init(red: CGFloat(r) / 0xff, green: CGFloat(g) / 0xff, blue: CGFloat(b) / 0xff, alpha: 1)
    }
}
