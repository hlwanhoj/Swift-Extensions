//
//  UIView+Nib.swift
//  NWD-Office
//
//  Created by Ho Lun Wan on 12/1/2018.
//

import Foundation

extension UIView {    
    /**
     Load the views from a nib
     */
    func loadFromNib(withName name: String? = nil) {
        let nibName = name ?? String(describing: type(of: self))

        if let view = UINib(nibName: nibName, bundle: nil).instantiate(withOwner: self, options: nil).first as? UIView {
            view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            view.frame = bounds
            addSubview(view)
        }
    }
}
