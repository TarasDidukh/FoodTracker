//
//  ViewController.swift
//  FoodTracker
//
//  Created by  Volodymyr Vlasiuk on 3/14/18.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    //MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameTextField.delegate = self;
    }
    
    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameLabel.text = textField.text;
    }
    
    //MARK: Actions
    @IBAction func setDefaultLabelName(_ sender: UIButton) {
        mealNameLabel.text = "Default Text";
    }
    
}

