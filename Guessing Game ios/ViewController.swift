//
//  ViewController.swift
//  Guessing Game ios
//
//  Created by Gabriela Torres on 10/10/18.
//  Copyright © 2018 Gabriela Torres. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var GuessTextField: UITextField!
    @IBOutlet weak var GuessButton: UIButton!
    @IBOutlet weak var FeedbackLabel: UILabel!
    @IBOutlet weak var GuessesLeftLabel: UILabel!
    
    @IBAction func GuessButtonTapped(_ sender: Any) {
       guesses -= 1
       GuessesLeftLabel.text = "\(guesses) guesses remaining"
    }
    
    var guesses = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
            FeedbackLabel.text = "\(guesses) guesses remaining"

    }


}

