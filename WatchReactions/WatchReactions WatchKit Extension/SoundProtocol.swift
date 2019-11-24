//
//  SoundProtocol.swift
//  WatchReactions WatchKit Extension
//
//  Created by Austin Potts on 11/24/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import AVFoundation


protocol SoundPlaying: AnyObject {
    var audioPlayer: AVAudioPlayer? {get set}
    
    
    
}


extension SoundPlaying {
    func playSound(named name: String){
        guard let url = Bundle.main.url(forResource: name, withExtension: "mp3") else {fatalError("Unable to find sound profile")}
        
        try? audioPlayer = AVAudioPlayer(contentsOf: url)
        audioPlayer?.play()
    }
}
