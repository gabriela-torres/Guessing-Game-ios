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
        case "EasyToGuessingGame":
            //Max 50
            viewController.maximum = 50
            
        case "MediumToGuessingGame":
           //Max 100
            viewController.maximum = 100
          
        case "HardToGuessingGame":
           //Max 500
            viewController.maximum = 500
            
        default:
            break
            
        }
    }
}
