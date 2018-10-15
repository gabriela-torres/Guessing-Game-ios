//
//  Select Difficulty View Controller.swift
//  Guessing Game ios
//
//  Created by Gabriela Torres on 10/11/18.
//  Copyright © 2018 Gabriela Torres. All rights reserved.
//

import UIKit

class SelectDifficultyViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let viewController = segue.destination as? ViewController else
        { return }
        
        switch segue.identifier {
        //Esay
        case "EasyToGuessingGame":
            //Min 1
            viewController.minimum = 1
            //Max 50
            viewController.maximum = 50
            
        //Medium
        case "MediumToGuessingGame":
            //Min 1
            viewController.minimum = 1
            //Max 100
            viewController.maximum = 100
            
        //Hard
        case "HardToGuessingGame":
            //Min 1
            viewController.minimum = 1
            //Max 500
            viewController.maximum = 500
            
        default:
            break
            
        }
    }
}
