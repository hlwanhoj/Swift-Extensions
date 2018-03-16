//
//  UIColor+Int.swift
//  OOOSH
//
//  Created by Ho Lun Wan on 16/10/2017.
//  Copyright © 2017 Keysoc. All rights reserved.
//

import UIKit

extension UIColor {
    
    convenience init(red: Int, green: Int, blue: Int, alpha: CGFloat) {
        let r = CGFloat(min(255, max(0, red)))
        let g = CGFloat(min(255, max(0, green)))
        let b = CGFloat(min(255, max(0, blue)))
        
        self.init(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: alpha)
    }
}
