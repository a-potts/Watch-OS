//
//  TableInterfaceController.swift
//  WatchReactions WatchKit Extension
//
//  Created by Austin Potts on 11/24/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import WatchKit
import Foundation


class TableInterfaceController: WKInterfaceController {

    @IBOutlet weak var table: WKInterfaceTable!
    
    let sounds = Bundle.main.urls(forResourcesWithExtension: "mp3", subdirectory: nil)?.map { $0.deletingPathExtension().lastPathComponent }.sorted() ?? []
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        table.setNumberOfRows(sounds.count, withRowType: "Row")
        
        for (index, sound) in sounds.enumerated() {
            guard let row = table.rowController(at: index) as? SoundRow else {continue}
            row.label.setText(sound)
        }
        
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
