//
//  UIAlertController+Error.swift
//  FNBSCustomer
//
//  Created by Ho Lun Wan on 30/1/2018.
//

import UIKit

extension UIAlertController {
    /**
     Init this controller to display an error
     */
    convenience init(error: Error, buttonTitle: String? = "OK", handler: ((UIAlertAction) -> Void)? = nil) {
        self.init(title: "Error", message: error.localizedDescription, preferredStyle: .alert)
        addAction(UIAlertAction(title: buttonTitle, style: .default, handler: handler))
    }
}
