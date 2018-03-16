//
//  UIView+Animation.swift
//  FNBS_Customer
//
//  Created by Ada Wong on 6/3/2018.
//

import UIKit

extension UIView {
    
    func fadeTransition(_ duration: CFTimeInterval) {
        let animation = CATransition()
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        animation.type = kCATransitionFade
        animation.duration = duration
        layer.add(animation, forKey: kCATransitionFade)
    }
    
}
