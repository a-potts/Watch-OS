//
//  FileManager-Documentsdirectory.swift
//  WatchReactions WatchKit Extension
//
//  Created by Austin Potts on 11/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

//This will tell us where the documents directory is 
extension FileManager {
    func getDocumentsDirectory() -> URL {
        let paths = urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
}
