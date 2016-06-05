//
//  ViewController.swift
//  CraftRunner
//
//  Created by Casey Lutz on 5/27/16.
//  Copyright © 2016 Lutz Bergsma Software. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    @IBOutlet weak var gameText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("TEST VIEW DID LOAD")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

