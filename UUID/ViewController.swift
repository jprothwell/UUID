//
//  ViewController.swift
//  UUID
//
//  Created by LeonJing on 2018/10/18.
//  Copyright © 2018 LeonJing. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        for _ in 0..<10 {
            print("uuid:\(UUID())")
        }
    }


}

