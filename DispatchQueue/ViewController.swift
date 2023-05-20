//
//  ViewController.swift
//  DispatchQueue
//
//  Created by siddharth-kothari-spk on 20/05/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       // mainThreadCrash()
        
       // dispatchMainAsync() // prints : 1 3 2
        
      //  dispatchMainAsync2() // prints : 1 5 2 4 3
        
      //  dispatchMainAsync3() // prints : 1 5 2 3 4
        
      //  dispatchMainAsync4() // prints : 1 5 2 4 3
        
      //  dispatchGlobalSync() // prints : 1 2 3
        
        dispatchGlobalSync2() // prints : 1 3 2
        
    }
    
    func mainThreadCrash() {
        // crash as main thread is blocked
        DispatchQueue.main.sync {
            print("test sync")
        }
    }

    func dispatchMainAsync() {
        print("1")
        DispatchQueue.main.async {
            print("2")
        }
        print("3")
    }
    
    
    func dispatchMainAsync2() {
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
    
    func dispatchMainAsync3() {
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
    
    
    func dispatchMainAsync4() {
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
    
    func dispatchGlobalSync() {
        DispatchQueue.global().sync {
            print("1")
            DispatchQueue.global().sync {
                print("2")
            }
            print("3")
        }
    }
    
    func dispatchGlobalSync2() {
        DispatchQueue.global().sync {
            print("1")
            DispatchQueue.global().async {
                print("2")
            }
            print("3")
        }
    }

}

