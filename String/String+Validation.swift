//
//  String+Validation.swift
//  OOOSH
//
//  Created by Ho Lun Wan on 16/10/2017.
//  Copyright © 2017 Keysoc. All rights reserved.
//

import Foundation

extension String {
    /**
     Check if certain string is a valid email
     */
    func isEmail() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
}
