//
//  CustomInterfaceController.swift
//  WatchReactions WatchKit Extension
//
//  Created by Austin Potts on 11/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import WatchKit
import Foundation


class CustomInterfaceController: WKInterfaceController {

  
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    
    @IBAction func recordTapped() {
    }
    
    
    @IBAction func playTapped() {
    }
    
}
