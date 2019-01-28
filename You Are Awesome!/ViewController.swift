//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Gu Xinran on 1/22/19.
//  Copyright © 2019 Gu Xinran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func showMessagePressed(_ sender: UIButton) {
        let messages = ["You are Awesome!",
                        "You are Great!",
                        "You are fantastic!",
                        "When the Genius Bar needs help, they call you!",
                        "You brighten me up!",
                        "You are da bomb!",
                        "You are tremdous"]
        var newIndex = -1
        repeat{
            newIndex = Int.random(in: 0..<messages.count)
        }while index == newIndex
        
        index = newIndex
        messageLabel.text = messages[index]
        
        
        
//        messageLabel.text = messages.randomElement()!
        
//        messageLabel.text = messages[index]
//        if index == messages.count - 1 {
//            index = 0
//        }else{
//            index = index + 1
//        }
//        let message1 = "You are Awesome!"
//        let message2 = "You are Great!"
//        let message3 = "You are Amazing"
//        if messageLabel.text == message1{
//        messageLabel.text = message2
//        }else if messageLabel.text == message2{
//            messageLabel.text = message3
//        }else{
//            messageLabel.text = message1
//        }
    }

}

