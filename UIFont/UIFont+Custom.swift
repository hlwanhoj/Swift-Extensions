//
//  UIFont+Custom.swift
//  OOOSH
//
//  Created by Ho Lun Wan on 17/10/2017.
//  Copyright © 2017 Keysoc. All rights reserved.
//

import UIKit

extension UIFont {
    /**
     Print all font names installed in system
     */
    func printAllFontNames() -> Void {
        for familyName in UIFont.familyNames {
            for name in UIFont.fontNames(forFamilyName: familyName) {
                print(name)
            }
        }
    }
}


extension UILabel {
    
    /// Change font to custom font
    func toCustomFont() {
        font = Theme.current.font.getCustomFont(from: font)
    }
    
}

extension UITextField {
    
    /// Change font to custom font
    func toCustomFont() {
        guard let font = font else { return }
        self.font = Theme.current.font.getCustomFont(from: font)
    }
    
}

extension UITextView {
    
    /// Change font to custom font
    func toCustomFont() {
        guard let font = font else { return }
        self.font = Theme.current.font.getCustomFont(from: font)
    }
    
}

extension UIButton {
    
    /// Change font to custom font
    func toCustomFont() {
        guard let font = titleLabel?.font else { return }
        titleLabel?.font = Theme.current.font.getCustomFont(from: font)
    }
    
}
