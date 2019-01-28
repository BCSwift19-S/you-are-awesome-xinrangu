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
    @IBOutlet weak var imageView: UIImageView!
    
    var index = -1
    var imageIndex = -1
    let numberOfImages = 10
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
        var newIndex: Int
        repeat{
            newIndex = Int.random(in: 0..<messages.count)
        }while index == newIndex
        
        index = newIndex
        messageLabel.text = messages[index]
        
        repeat{
            newIndex = Int.random(in: 1...numberOfImages)
        }while imageIndex == newIndex
        
        imageIndex = newIndex
        imageView.image = UIImage(named: "img\(imageIndex)")
    }

}

