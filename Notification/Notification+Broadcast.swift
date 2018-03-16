//
//  Notification+Broadcast.swift
//  FNBS_Merchant
//
//  Created by Ada Wong on 3/3/2018.
//

import Foundation

extension Notification {
    
    static var resultKey: String = "Result"
    
    public func getResult<T: Notificationable>(type: T.Type) -> T? {
        guard let userInfo = userInfo, let val = userInfo[Notification.resultKey] as? T else {
            return nil
        }
        return val
    }
    
}


