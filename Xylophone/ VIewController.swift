//
//  ViewController.swift
//  Xylophone
//
//  Created by Navpreet Kauron 27/01/2018.
//
//

import UIKit
// Step 1 : import the audio library
import AVFoundation
// Creating array that will hold the all the audio files
let soundArray = ["note1", "note2", "note3","note4","note5","note6","note7"]
var selectedSoundFile : String = ""

//Step 2: include AVAudioPlayerDelegate
class ViewController: UIViewController, AVAudioPlayerDelegate{
  
    // Step 3: Create a AVAudioPlayer variable
    var audioPlayer : AVAudioPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func notePressed(_ sender: UIButton) {
        
        selectedSoundFile = soundArray[sender.tag - 1]
        playSound()
    }
    func playSound()
    {
        // Step 4: create a constant that will store the location of audio filess
        let soundURL = Bundle.main.url(forResource: selectedSoundFile, withExtension: "wav")
        
        do {
            // Step 5: this is equal to open up the audioplayer and putting the disk into it
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        } catch {
            print(error)
        }
        // Step 6: Play it
        audioPlayer.play()
    }
  

}

