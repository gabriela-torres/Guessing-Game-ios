//
//  Custom View Controller.swift
//  Guessing Game ios
//
//  Created by Gabriela Torres on 10/13/18.
//  Copyright © 2018 Gabriela Torres. All rights reserved.
//

import UIKit

class CustomViewController: UIViewController {

    //UI Outlets
    @IBOutlet weak var NumberOfGuessesTextField: UITextField!
    @IBOutlet weak var MaximumNumberTextField: UITextField!
    
    @IBOutlet weak var CustomizeButton: UIButton!
    //UI Action
    @IBAction func CustomizeButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "Custom", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let viewController = segue.destination as? ViewController else
        { return }
        
        switch segue.identifier {
        case "Customize":
            viewController.maximum = (Int(MaximumNumberTextField.text!)!)
            viewController.guessesLeft = (Int(NumberOfGuessesTextField.text!)!)
        default:
            break
            
        }
    }
}

