//
//  UIColor+Extra.swift
//  OOOSH
//
//  Created by Ho Lun Wan on 11/10/2017.
//  Copyright © 2017 Keysoc. All rights reserved.
//

import UIKit

extension UIColor {
	func lighter(_ amount : CGFloat = 0.25) -> UIColor {
		return hueColorWithBrightnessAmount(1 + amount)
	}
	
	func darker(_ amount : CGFloat = 0.25) -> UIColor {
		return hueColorWithBrightnessAmount(1 - amount)
	}
	
	fileprivate func hueColorWithBrightnessAmount(_ amount: CGFloat) -> UIColor {
		var hue         : CGFloat = 0
		var saturation  : CGFloat = 0
		var brightness  : CGFloat = 0
		var alpha       : CGFloat = 0
		
		if getHue(&hue, saturation: &saturation, brightness: &brightness, alpha: &alpha) {
			return UIColor( hue: hue,
			                saturation: saturation,
			                brightness: brightness * amount,
			                alpha: alpha )
		} else {
			return self
		}
	}
	
}

