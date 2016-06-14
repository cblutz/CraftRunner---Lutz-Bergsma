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
    
    
    @IBOutlet weak var moveButton: UIButton!
    @IBOutlet weak var gatherButton: UIButton!
    @IBOutlet weak var gameText: UILabel!
    @IBOutlet weak var islandButton: UIButton!
    @IBOutlet weak var desertButton: UIButton!
    @IBOutlet weak var forestButton: UIButton!
    @IBOutlet weak var mountainButton: UIButton!
    
    //Button Presses
    
    @IBAction func mountainPress(sender: AnyObject) {
        coreGame().saved.setObject("Mountain", forKey: "Terrain")
        coreGame().saved.setBool(true, forKey: "NeedTutorial")
        coreGame().play(gameText, terrain: "Mountain", buttonOne: moveButton, buttonTwo: gatherButton)
        mountainBool = true
        makeButtonsInvis(islandButton, button2: desertButton, button3: forestButton, button4: mountainButton)
        gameText.hidden = false
        print("TEST BUTTON PRESSED")
        self.view.backgroundColor = UIColor.lightGrayColor()
    }
    
    @IBAction func forestPress(sender: AnyObject) {
        coreGame().saved.setObject("Forest", forKey: "Terrain")
        coreGame().saved.setBool(true, forKey: "NeedTutorial")
        coreGame().play(gameText, terrain: "Forest", buttonOne: moveButton, buttonTwo: gatherButton)
        forestBool = true
        makeButtonsInvis(islandButton, button2: desertButton, button3: forestButton,  button4: mountainButton)
        gameText.hidden = false
        print("TEST BUTTON PRESSED")
        self.view.backgroundColor = UIColor.greenColor()
    }
    
 
    @IBAction func desertPress(sender: AnyObject) {
        coreGame().saved.setObject("Desert", forKey: "Terrain")
        coreGame().saved.setBool(true, forKey: "NeedTutorial")
        coreGame().play(gameText, terrain: "Desert", buttonOne: moveButton, buttonTwo: gatherButton)
        desertBool = true
        makeButtonsInvis(islandButton, button2: desertButton, button3: forestButton, button4: mountainButton)
        gameText.hidden = false
        print("TEST BUTTON PRESSED")
        self.view.backgroundColor = UIColor.brownColor()
    }
    @IBAction func islandPress(sender: AnyObject) {
        coreGame().saved.setObject("Island", forKey: "Terrain")
        coreGame().saved.setBool(true, forKey: "NeedTutorial")
        coreGame().play(gameText, terrain: "Island", buttonOne: moveButton, buttonTwo: gatherButton)
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
        if (coreGame().saved.objectForKey("Terrain") != nil){
            coreGame().saved.setBool(false, forKey: "NeedTutorial")
            islandButton.hidden = true
            mountainButton.hidden = true
            forestButton.hidden = true
            desertButton.hidden = true
            coreGame().play(gameText, terrain: coreGame().saved.objectForKey("Terrain") as! String, buttonOne: moveButton, buttonTwo: gatherButton)
            if (coreGame().saved.objectForKey("Terrain") as! String == "Mountain"){
                self.view.backgroundColor = UIColor.lightGrayColor()
            }
            else if (coreGame().saved.objectForKey("Terrain") as! String == "Forest"){
                self.view.backgroundColor = UIColor.greenColor()
            }
            else if (coreGame().saved.objectForKey("Terrain") as! String == "Desert"){
                self.view.backgroundColor = UIColor.brownColor()
            }
            else if (coreGame().saved.objectForKey("Terrain") as! String == "Island"){
                self.view.backgroundColor = UIColor.yellowColor()
            }
        }
        
        
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("TEST VIEW DID LOAD")
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

