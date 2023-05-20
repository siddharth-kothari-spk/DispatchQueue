//
//  Async.swift
//  DispatchQueue
//
//  Created by siddharth-kothari-spk on 20/05/23.
//

import Foundation

class Async {
    static func mainThreadCrash() {
        // crash as main thread is blocked
        DispatchQueue.main.sync {
            print("test sync")
        }
    }

    static func dispatchMainAsync() {
        print("1")
        DispatchQueue.main.async {
            print("2")
        }
        print("3")
    }
    
    
    static func dispatchMainAsync2() {
        print("1")
        DispatchQueue.main.async {
            print("2")
            DispatchQueue.main.async {
                print("3")
            }
            print("4")
        }
        print("5")
    }
    
    static func dispatchMainAsync3() {
        print("1")
        DispatchQueue.main.async {
            print("2")
            DispatchQueue.global().sync { // global is background thread so calling sync does not block main thread and no crash occurs
                print("3")
            }
            print("4")
        }
        print("5")
    }
    
    
    static func dispatchMainAsync4() {
        print("1")
        DispatchQueue.main.async {
            print("2")
            DispatchQueue.global().async {
                // global is background thread
                print("3")
            }
            print("4")
        }
        print("5")
    }    
}
