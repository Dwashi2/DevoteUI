//
//  SoundPlayer.swift
//  DevoteUI
//
//  Created by Daniel Washington Ignacio on 11/12/23.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch{
            print("Cloud not find and play the sound file.")
        }
    }
}
