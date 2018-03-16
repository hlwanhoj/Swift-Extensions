//
//  UIScrollView+Extra.swift
//  OOOSH
//
//  Created by Ho Lun Wan on 11/10/2017.
//  Copyright © 2017 Keysoc. All rights reserved.
//

import UIKit

extension UIScrollView {
	
	/// Page which the view scrolls to
    var fractionalPage: (x: CGFloat, y: CGFloat) {
		let pageSize = self.frame.size
		let page = ((self.contentOffset.x / pageSize.width) + 0.5, (self.contentOffset.y / pageSize.height) + 0.5)

		return page
	}
}
