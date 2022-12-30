//
//  ViewController.swift
//  userDefaults-Hw
//
//  Created by Consultant on 12/29/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    let userDefaults = UserDefaults()
    

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var field: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        field.delegate = self
        
        if let value = userDefaults.value(forKey: "text") as? String {
            label.text = value
        }
        
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        userDefaults.set(field.text, forKey: "text")
        field.resignFirstResponder()
        return true
    }

}

