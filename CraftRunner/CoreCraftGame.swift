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
    
    static var resInv = []
    static var craftedInv = []
    static var toolInv = ["HANDS"]
    var resLeft = true
    static var resCount = 10
    static var knownKeys = []
    static var knownValues = []
    
    
    
    public func play(gameText: UILabel, terrain: String, buttonOne: UIButton, buttonTwo: UIButton) -> Void {
        
        //print("Made it to the game function, but there is nothing here...yet!")
        
        gameText.text = "You suddenly wake up in the middle of a vast forest."
        
        
        var timeDelay = 2.5 * Double(NSEC_PER_SEC)
        
        var time = dispatch_time(DISPATCH_TIME_NOW, Int64(timeDelay))
        
        dispatch_after(time, dispatch_get_main_queue()){
            UIView.animateWithDuration(2.5, animations: {
                gameText.alpha = 0
                
                
            })
            gameText.text = "You look around"
            
            UIView.animateWithDuration(1.5, animations: {
                gameText.alpha = 1
                
                
            })
        }
        
        
    }
    
    
    
    
    
    
}