//
//  Bundle+AppInfo.swift
//  OOOSH
//
//  Created by Ho Lun Wan on 16/10/2017.
//  Copyright © 2017 Keysoc. All rights reserved.
//

import Foundation


extension Bundle {
    
    /// Bundle ID in info dictionary. CFBundleIdentifier
    var bundleID: String? {
        return self.infoDictionary?["CFBundleIdentifier"] as? String
    }
    
    /// Release version in info dictionary. CFBundleShortVersionString
    var releaseVersion: String? {
        return self.infoDictionary?["CFBundleShortVersionString"] as? String
    }
    
    /// Build version in info dictionary. CFBundleVersion
    var buildVersion: String? {
        return self.infoDictionary?["CFBundleVersion"] as? String
    }

    /// Bundle ID of this application. CFBundleIdentifier
    static var bundleID: String? {
        return Bundle.main.bundleID
    }
    
    /// Release version of this application. CFBundleShortVersionString
    static var releaseVersion: String? {
        return Bundle.main.releaseVersion
    }
    
    /// Build version of this application. CFBundleVersion
    static var buildVersion: String? {
        return Bundle.main.buildVersion
    }
}
