//
//  ViewController.swift
//  AGuessingGame
//
//  Created by Maxwell Lu on 2019-10-03.
//  Copyright © 2019 Maxwell Lu. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    // MARK: Properties - store information
    
    
    // MARK: Initializers - initialize a class ready for use
    
    
    // MARK: Methods (functions) - behaviours
    
    
    // Runs as soon as the view becomes visible to the user
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        // Make an object named 'synthesizer', which is an instance of the class 'AVSpeechSynthesizer'
        let synthesizer = AVSpeechSynthesizer()
        
    
        
        // Make a string that contains what we want the coputer to say
        let message = "I'm thinking of a number between 1 and 100, guess what it is."
        
        // Make an object named 'utterance' which is an instance of the class 'AVSpeechUtterance'.
        var utterance = AVSpeechUtterance(string: message)
        
        // Speak the welcome message
        synthesizer.speak(utterance)
    }


}

