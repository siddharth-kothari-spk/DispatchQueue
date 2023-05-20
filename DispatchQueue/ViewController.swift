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
        
//        Async.mainThreadCrash()
//        Async.dispatchMainAsync() // prints : 1 3 2
//
//        Async.dispatchMainAsync2() // prints : 1 5 2 4 3
//
//        Async.dispatchMainAsync3() // prints : 1 5 2 3 4
//
//        Async.dispatchMainAsync4() // prints : 1 5 2 4 3
        
//        Sync.dispatchGlobalSync() // prints : 1 2 3
        
          Sync.dispatchGlobalSync2() // prints : 1 3 2
        
    }
}

