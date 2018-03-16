//
//  String+QRCode.swift
//  Optiki
//
//  Created by Ho Lun Wan on 2/2/2018.
//

import UIKit

extension String {
    /**
     
     */
    func createQRCode(forSize size: CGSize? = nil) -> UIImage? {
        let strData = data(using: String.Encoding.isoLatin1, allowLossyConversion: false)
        guard let filter = CIFilter(name: "CIQRCodeGenerator") else { return nil }

        filter.setValue(strData, forKey: "inputMessage")
        filter.setValue("Q", forKey: "inputCorrectionLevel")
        
        guard let ciImage = filter.outputImage else { return nil }

        if let size = size {
            let scaleX = size.width / ciImage.extent.size.width
            let scaleY = size.height / ciImage.extent.size.height
            let transformedImage = ciImage.transformed(by: CGAffineTransform(scaleX: scaleX, y: scaleY))
            
            return UIImage(ciImage: transformedImage)
        } else {
            return UIImage(ciImage: ciImage)
        }
    }
}
