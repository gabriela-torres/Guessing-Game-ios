//
//  ViewController.swift
//  Guessing Game ios
//
//  Created by Gabriela Torres on 10/10/18.
//  Copyright © 2018 Gabriela Torres. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: UI Outlets
    @IBOutlet weak var GuessTextField: UITextField!
    @IBOutlet weak var GuessButton: UIButton!
    @IBOutlet weak var FeedbackLabel: UILabel!
    @IBOutlet weak var GuessesLeftLabel: UILabel!
    @IBOutlet weak var PlayAgainButton: UIButton!
    @IBOutlet weak var InstructionsLabel: UILabel!
    
    //MARK: Properties
    var minimum = 1
    var maximum = 100
    var guessesLeft = 5
    var randomNumber = Int.random(in: 1...100)
    
    //MARK: Functions
    func makeAGuess(guess: Int) {
        guessesLeft -= 1
        guard guess >= minimum && guess <= maximum else {
            FeedbackLabel.text = "Your number wasn't betweeen \(minimum) and \(maximum)."
            return
        }
        
        if guess == randomNumber {
            FeedbackLabel.text = "You won!"
            setupUIForRestart()
        } else if guessesLeft == 0 {
            FeedbackLabel.text = "You lost! The correct number is \(randomNumber)"
            setupUIForRestart()
            return
        }
        
        if guess < randomNumber {
            
            FeedbackLabel.text = "Guess Higher..."
        } else {
            FeedbackLabel.text = "Guess Lower..."
            
            GuessesLeftLabel.text = "You have \(guessesLeft) guesses left."
        }
    }
    
    //MARK: UI Actions
    @IBAction func playAgainButtonTapped(_ sender: Any) {
        restart()
    }
    @IBAction func GuessButtonTapped(_ sender: Any) {
        let userInput = GuessTextField.text!
        
        makeAGuess(guess: Int(userInput)!)
        GuessesLeftLabel.text = "You have \(guessesLeft) guesses left."
        guard let guess = Int(userInput) else {
            FeedbackLabel.text = "You didn’t give me a number..."
            return
        }
    }
    
    //MARK: Functions
    func setupUIForRestart() {
        //Display Input
        GuessTextField.isEnabled = false
        //Hide Guess Button
        GuessButton.isHidden = true
        //Unhide Play Again Button
        PlayAgainButton.isHidden = false
    }
    
    func restart() {
        //New random number.
        randomNumber = Int.random(in: minimum ... maximum)
        
        
        //Reset guesses remaining.
        guessesLeft = 5
        
        //Clear text field.
        GuessTextField.text = ""
        
        //Enable text field.
        GuessTextField.isEnabled = true
        
        //Hide play again button.
        PlayAgainButton.isHidden = true
        
        //Show guess button.
        GuessButton.isHidden = false
        
        //Reset feedback label.
        FeedbackLabel.text = "Guess a number!"
        
        //Reset guesses remaining label.
        GuessesLeftLabel.text = "You have \(guessesLeft) guesses left."
    }

    
    //MARK: Lifestyles
    override func viewDidLoad() {
        super.viewDidLoad()
        var randomNumber = Int.random(in: minimum ... maximum)
        InstructionsLabel.text = "Please enter a number between \(minimum) and \(maximum)."
        // Do any additional setup after loading the view, typically from a nib.
        GuessesLeftLabel.text = "You have \(guessesLeft) guesses left."
    }
}
