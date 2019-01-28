//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Gu Xinran on 1/22/19.
//  Copyright © 2019 Gu Xinran. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var soundSwitch: UISwitch!
    var awesomeplayer = AVAudioPlayer()
    var index = -1
    var imageIndex = -1
    var soundIndex = -1
    let numberOfImages = 11
    let numberOfSounds = 7
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func nonRepeatingRandom(lastNumber:Int,maxValue
        :Int) -> Int{
        var newIndex:Int
        repeat{
            newIndex = Int.random(in: 0..<maxValue)
        }while lastNumber == newIndex
        return newIndex
    }
    
    func playSound(soundName:String,audioPlayer: inout AVAudioPlayer){
        if let sound = NSDataAsset(name:soundName){
            do{
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            }catch{
                print("ERROR: data in \(soundName) cannot be played as a sound")
            }
        }else{
            print("ERROR:file\(soundName) did not load")
        }
    }
    @IBAction func soundSwitchPressed(_ sender: UISwitch) {
        if soundSwitch.isOn == false && soundIndex != -1{
            awesomeplayer.stop()
        }
    }
    @IBAction func showMessagePressed(_ sender: UIButton) {
        let messages = ["You are Awesome!",
                        "You are Great!",
                        "You are fantastic!",
                        "When the Genius Bar needs help, they call you!",
                        "You brighten me up!",
                        "You are da bomb!",
                        "You are tremdous"]

        //Display Message
       index = nonRepeatingRandom(lastNumber: index, maxValue: messages.count)
        messageLabel.text = messages[index]
        
        //Show Image
        imageIndex = nonRepeatingRandom(lastNumber: imageIndex, maxValue: numberOfImages)
        imageView.image = UIImage(named: "img\(imageIndex)")
        
        //Assign a random sound
        if soundSwitch.isOn{
            soundIndex = nonRepeatingRandom(lastNumber: soundIndex, maxValue: numberOfSounds)
            //Play sound
        playSound(soundName:"sound\(soundIndex)",audioPlayer: &awesomeplayer)
        }
    }

}

