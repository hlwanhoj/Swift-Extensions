//
//  UIImage+Crop.swift
//  OOOSH
//
//  Created by Ho Lun Wan on 10/1/2018.
//  Copyright © 2018 Keysoc. All rights reserved.
//

import UIKit

extension UIImage {
    /**
     Crop image to certain size, with the cropped rect anchored to axes
     - parameters:
         - size: Target size
         - anchor: Ranged from 0 to 1. For x, 0 = snapped to the left, 1 = snapped to the right. For y, 0 = snapped to the top, 1 = snapped to the bottom.
     */
    func cropped(toSize size: CGSize, anchor: CGPoint) -> UIImage? {
        guard let cgImage = cgImage else { return nil }
        
        var newSize = size
        newSize.width = min(newSize.width, size.width)
        newSize.height = min(newSize.height, size.height)
        
        var newAnchor = anchor
        newAnchor.x = min(1, max(0, newAnchor.x))
        newAnchor.y = min(1, max(0, newAnchor.y))

        let x = (self.size.width - newSize.width) * anchor.x
        let y = (self.size.height - newSize.height) * anchor.y

        var cropRect = CGRect(x: x, y: y, width: newSize.width, height: newSize.height)
        if imageOrientation == .left || imageOrientation == .right {
            cropRect = CGRect(x: y, y: x, width: newSize.height, height: newSize.width)
        }
        
        guard let imageRef = cgImage.cropping(to: cropRect) else {
            return nil
        }

        let image = UIImage(cgImage: imageRef, scale: scale, orientation: imageOrientation)
        return image
    }
}

