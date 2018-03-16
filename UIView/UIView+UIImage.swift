//
//  UIView+UIImage.swift
//  FNBS_Customer
//
//  Created by Ho Lun Wan on 5/3/2018.
//

import Foundation

extension UIView {
    /**
     Create a image reflecting this view
     https://stackoverflow.com/questions/4334233/how-to-capture-uiview-to-uiimage-without-loss-of-quality-on-retina-display
     */
    func asImage() -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(bounds.size, isOpaque, 0.0)
        defer { UIGraphicsEndImageContext() }
        if let context = UIGraphicsGetCurrentContext() {
            layer.render(in: context)
            let image = UIGraphicsGetImageFromCurrentImageContext()
            return image
        }
        
        return nil
    }
}
