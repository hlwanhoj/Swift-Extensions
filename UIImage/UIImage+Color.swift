//
//  UIImage+Color.swift
//  OOOSH
//
//  Created by Ho Lun Wan on 17/10/2017.
//  Copyright © 2017 Keysoc. All rights reserved.
//

import UIKit

extension UIImage {
    /**
     Create an image with pure color
     http://stackoverflow.com/questions/26542035/create-uiimage-with-solid-color-in-swift
     */
    convenience init?(color: UIColor, size: CGSize = CGSize(width: 1, height: 1)) {
        let rect = CGRect(origin: .zero, size: size)
        UIGraphicsBeginImageContextWithOptions(rect.size, false, 0.0)
        color.setFill()
        UIRectFill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        guard let cgImage = image?.cgImage else { return nil }
        self.init(cgImage: cgImage)
    }
}
