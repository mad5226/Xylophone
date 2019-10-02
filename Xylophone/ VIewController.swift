//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    // Grab the path, make sure to add it to your project!
    
    
    var audioPlayer: AVAudioPlayer!
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        var selectedSoundFileName : String = soundArray[sender.tag - 1]
        
        playSound(soundName: selectedSoundFileName)
        
    }
    
    func playSound(soundName : String)
  {
    let url = Bundle.main.url(forResource: soundName, withExtension: "wav")!
    
    do {
        try audioPlayer = AVAudioPlayer(contentsOf: url)
    } catch {
        print("error loading file")
        // couldn't load file :(
    }
    audioPlayer.play()
    }

}

