//
//  ThirdViewController.swift
//  15_04_24_FirstApplication
//
//  Created by Vishal Jagtap on 25/04/24.
//

import UIKit
import AVFoundation

class ThirdViewController: UIViewController{
    var avPlayer = AVPlayer()
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func btnPlayAudio(_ sender: UIButton) {
        
        if sender.tag == 1{
            print("Btn 1 clicked")
            playAudio(songURLString: "audio_file")
        } else if sender.tag == 2{
            print("Btn 2 clicked")
            //playAudio(songURLString: <#String#>)
        } else {
            print("Btn 3 clicked")
            //playAudio(songURLString: <#String#>)
        }
    }
    
    func playAudio(songURLString : String){
        var path = Bundle.main.url(forResource: songURLString, withExtension: "mp3")
//        let songURL = URL(string: path)
        avPlayer = AVPlayer(url: path!)
        avPlayer.play()
    }
}
