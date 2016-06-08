//
//  MainGameView.swift
//  CraftRunner
//
//  Created by Lori Spillane on 6/7/16.
//  Copyright © 2016 Lutz Bergsma Software. All rights reserved.
//

import Foundation
import UIKit

class MainGameController: UIViewController {
    
    //Variables
    
    var mountainBool = false
    var forestBool = false
    var desertBool = false
    var islandBool = false
    
    //Labels, Buttons etc.
    
    
    @IBOutlet weak var gameText: UILabel!
    @IBOutlet weak var islandButton: UIButton!
    @IBOutlet weak var desertButton: UIButton!
    @IBOutlet weak var forestButton: UIButton!
    @IBOutlet weak var mountainButton: UIButton!
    
    //Button Presses
    
    @IBAction func mountainPress(sender: AnyObject) {
        coreGame().play(gameText, terrain: "Mountain")
        mountainBool = true
        makeButtonsInvis(islandButton, button2: desertButton, button3: forestButton, button4: mountainButton)
        gameText.hidden = false
        print("TEST BUTTON PRESSED")
        self.view.backgroundColor = UIColor.lightGrayColor()
    }
    
    @IBAction func forestPress(sender: AnyObject) {
        coreGame().play(gameText, terrain: "Forest")
        forestBool = true
        makeButtonsInvis(islandButton, button2: desertButton, button3: forestButton,  button4: mountainButton)
        gameText.hidden = false
        print("TEST BUTTON PRESSED")
        self.view.backgroundColor = UIColor.greenColor()
    }
    
 
    @IBAction func desertPress(sender: AnyObject) {
        coreGame().play(gameText, terrain: "Desert")
        desertBool = true
        makeButtonsInvis(islandButton, button2: desertButton, button3: forestButton, button4: mountainButton)
        gameText.hidden = false
        print("TEST BUTTON PRESSED")
        self.view.backgroundColor = UIColor.brownColor()
    }
    @IBAction func islandPress(sender: AnyObject) {
        coreGame().play(gameText, terrain: "Island")
        islandBool = true
        makeButtonsInvis(islandButton, button2: desertButton, button3: forestButton, button4: mountainButton)
        gameText.hidden = false
        print("TEST BUTTON PRESSED")
        self.view.backgroundColor = UIColor.yellowColor()
    }
    
    
    
    //Standard functions
    
    func makeButtonsInvis(button1: UIButton, button2: UIButton, button3: UIButton,  button4: UIButton) -> Void {
        button1.hidden = true
        button2.hidden = true
        button3.hidden = true
        button4.hidden = true
    }
    
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

