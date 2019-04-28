//
//  ViewController.swift
//  FoodTracker
//
//  Created by Matthew Cook on 11/24/18.
//  Copyright © 2018 Matthew Cook. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var mealNameTextField: UITextField!
    @IBOutlet weak var defaultLabelTextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        if (mealNameLabel.text == "Meal Name: ") {
            mealNameLabel.text = "Default Text"
        } else {
            mealNameLabel.text = "Meal Name: "
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameLabel.text = textField.text
        textField.text = ""
    }
}

