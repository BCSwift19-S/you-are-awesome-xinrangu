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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func showMessagePressed(_ sender: UIButton) {
        if messageLabel.text == "You are Awesome!"{
        messageLabel.text = "You are Great!"
        }else if messageLabel.text == "You are Great!"{
            messageLabel.text = "You are Amazing!"
        }else{
            messageLabel.text = "You are Awesome!"
        }
    }

}

