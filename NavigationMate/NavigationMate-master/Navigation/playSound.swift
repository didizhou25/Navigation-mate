//
//  playSounds.swift
//  Navigation
//
//  Created by Adriaan Giel on 26/06/2020.
//  Copyright © 2020 Toph. All rights reserved.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound:String, format: String){
    print("yup")
    if let urlPath = Bundle.main.path(forResource: sound, ofType: format){
        do{
            print(urlPath)
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: urlPath))
            audioPlayer?.play()
            
            print("playedSound")
        }catch{
            print("No file found")
        }
    } 
}
