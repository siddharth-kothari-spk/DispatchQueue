//
//  Sync.swift
//  DispatchQueue
//
//  Created by sidkotha on 20/05/23.
//

import Foundation

class Sync {
    static func dispatchGlobalSync() {
        DispatchQueue.global().sync {
            print("1")
            DispatchQueue.global().sync {
                print("2")
            }
            print("3")
        }
    }
    
    static func dispatchGlobalSync2() {
        DispatchQueue.global().sync {
            print("1")
            DispatchQueue.global().async {
                print("2")
            }
            print("3")
        }
    }
}
