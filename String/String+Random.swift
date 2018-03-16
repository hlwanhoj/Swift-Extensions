//
//  String+Random.swift
//  Optiki
//
//  Created by Ho Lun Wan on 5/2/2018.
//

import Foundation

extension String {
    /**
     Create a random alphanum string
     */
    static func randomAlphanumString(forLength length: Int) -> String {
        let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        var str = ""
        
        for _ in 0..<length {
            let rand = Int(arc4random_uniform(UInt32(letters.count)))
            let idx = letters.index(letters.startIndex, offsetBy: rand)
            let char = letters[idx...idx]
            str += String(char)
        }
        
        return str
    }
}
