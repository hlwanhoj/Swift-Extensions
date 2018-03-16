//
//  Notificationable.swift
//  FNBS_Merchant
//
//  Created by Ada Wong on 3/3/2018.
//

import Foundation

public protocol Notificationable {
    
    static var notificationName: Notification.Name { get }
    var notificationName: Notification.Name { get }
    func asUserInfo() -> [String: Any]
    
}

extension Notificationable {
    
    public static var notificationName: Notification.Name {
        return Notification.Name("\(type(of: self))Notification")
    }
    
    public var notificationName: Notification.Name {
        return type(of: self).notificationName
    }
    
    public func asUserInfo() -> [String: Any] {
        return [Notification.resultKey: self]
    }
    
}
