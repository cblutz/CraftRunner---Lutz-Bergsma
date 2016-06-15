//
//  CoreCraftGame.swift
//  CraftRunner
//
//  Created by Lori Spillane on 6/5/16.
//  Copyright © 2016 Lutz Bergsma Software. All rights reserved.
//

import Foundation
import UIKit

public class coreGame {
    
    let saved = NSUserDefaults.standardUserDefaults()
    
    
    static var resInv = []
    static var craftedInv = []
    static var toolInv = ["HANDS"]
    var resLeft = true
    static var resCount = 10
    static var knownKeys = []
    static var knownValues = []
    let introMessages = ["You suddenly wake up in the middle of a vast forest.","You look around","There's nobody around...only you","However, there are many natural resources around you", "You realize that the only way to survive is to explore and gather"]
    var introIndex = 0
    
    public func play(gameText: UILabel, terrain: String, buttonOne: UIButton, buttonTwo: UIButton) -> Void {
        
        // -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=START=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
        if saved.boolForKey("NeedTutorial"){
            
            buttonOne.hidden = true
            buttonTwo.hidden = true
            
            var timeDelay = 2.5 * Double(NSEC_PER_SEC)
            
            var time = dispatch_time(DISPATCH_TIME_NOW, Int64(timeDelay))
            
            introAnimation(gameText, buttonOne: buttonOne, buttonTwo: buttonTwo)
            
            
            
                            
                  
                    
            
            
            
        }
        //--------------------------------GAME-START-------------------------------------------------
        else{
            gameText.hidden = false
            buttonOne.hidden = false
            buttonTwo.hidden = false
        }
        
    }
    public func introAnimation(gameText: UILabel, buttonOne: UIButton, buttonTwo: UIButton) -> Void {
        gameText.text = introMessages[introIndex]
        introIndex++
            UIView.animateWithDuration(2.0, delay: 1.0, options: .CurveEaseInOut, animations: { () -> Void in
                gameText.alpha=1.0
                }, completion: { (success) -> Void in
                    UIView.animateWithDuration(2.0, delay: 1.0, options: .CurveEaseInOut, animations: {() -> Void in
                        gameText.alpha = 0
                        }, completion: { (success) -> Void in
                            if (self.introIndex < self.introMessages.count){
                                self.introAnimation(gameText, buttonOne: buttonOne, buttonTwo: buttonTwo)
                            }
                            else{
                                buttonOne.hidden = false
                                buttonTwo.hidden = false
                            }
                    })
            })
        }
        
        
    }


