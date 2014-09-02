//
//  MyViewController.swift
//  MixNMatch2
//
//  Created by Udo Hoppenworth on 8/30/14.
//  Copyright (c) 2014 Division One Software, LLC. All rights reserved.
//

import UIKit

class MyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSLog("test")
    }
    
    deinit {
        NSLog("deinit")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
