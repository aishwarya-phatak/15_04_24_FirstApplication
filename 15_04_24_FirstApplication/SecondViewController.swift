//
//  SecondViewController.swift
//  15_04_24_FirstApplication
//
//  Created by Vishal Jagtap on 25/04/24.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var welcomeMessageLabel: UILabel!
    @IBOutlet weak var usernameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.welcomeMessageLabel.text = "Welcome To Bitcode!"
    }
    
    @IBAction func btnSumbit(_ sender: Any) {
        let extractedText = self.usernameTextField.text
        self.welcomeMessageLabel.text = "Welcome " + extractedText!
    }
}
