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
    let targetNumber = Int.random(in: 1...100)
    
    @IBOutlet weak var submittedGuess: UITextField!
    // MARK: Initializers - initialize a class ready for use
    
    
    // MARK: Methods (functions) - behaviours
    
    
    // Runs as soon as the view becomes visible to the user
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        speak(message: "I'm thinking of a number between 1 and 100, guess what it is.")
    }

// This function will be used to check a guess.
    @IBAction func checkGuess(_ sender: Any) {
        
        // Obtain the guess value from the text field.
        guard let guessText = submittedGuess.text, guessText != "" else {
            speak(message: "Bro, try entering a value.")
            return
        }
        
        guard let guessNumber = Int(guessText) else {
            speak(message: "Hey, how about entering a number?")
            return
        }
        
        if guessNumber > targetNumber {
            
            speak(message: "Guess lower next time")
            
        } else if guessNumber < targetNumber {
            
            speak(message: "Guess higher next time")
            
        } else {
            
            speak(message: "You are correct!")
            
        }
    }
    
// A function that will speak whatever message is provided
    func speak(message: String) {
        
        // Make an object named 'synthesizer', which is an instance of the class 'AVSpeechSynthesizer'
            let synthesizer = AVSpeechSynthesizer()
            
            // Make an object named 'utterance' which is an instance of the class 'AVSpeechUtterance'.
            var utterance = AVSpeechUtterance(string: message)
            
            // Speak the welcome message
            synthesizer.speak(utterance)
        
            // Print the massage
            print(message)
    }
}

