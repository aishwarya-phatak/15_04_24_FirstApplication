//
//  ViewController.swift
//  15_04_24_FirstApplication
//
//  Created by Vishal Jagtap on 24/04/24.
//

import UIKit

class ViewController: UIViewController {
    var messageLabel : UILabel?
    var usernameTextField : UITextField?
    var btnSubmit : UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()
        let cgRect1 = CGRect(x: 100, y: 100, width: 200, height: 60)
        messageLabel = UILabel(frame: cgRect1)
        messageLabel!.text = "Welcome To Bitcode!"
        messageLabel!.textColor = .brown
        messageLabel!.backgroundColor = .cyan
        
        self.view.addSubview(messageLabel!)
        
        let cgRect2 = CGRect(x: 100, y: 180, width: 200, height: 60)
        usernameTextField = UITextField(frame: cgRect2)
        usernameTextField!.textColor = .black
        usernameTextField!.backgroundColor = .lightGray
        
        self.view.addSubview(usernameTextField!)
        
        let cgRect3 = CGRect(x: 100, y: 260, width: 200, height: 60)
        btnSubmit = UIButton(frame: cgRect3)
        btnSubmit!.setTitle("Submit", for: .normal)
        btnSubmit!.backgroundColor = .green
        btnSubmit!.setTitleColor(.brown, for: .normal)
        
        btnSubmit?.addAction(UIAction(handler: { action in
            let extractedTextFromTextField = self.usernameTextField?.text
            self.messageLabel!.text = "Welcome " + extractedTextFromTextField!
        }), for: .touchUpInside)
        
//        btnSubmit!.addTarget(self,
//                            action: #selector(btnSubmitClicked),
//                            for: .touchUpInside)
        btnSubmit?.backgroundColor = .darkGray
        
        self.view.addSubview(btnSubmit!)
       
    }
    
//    @objc func btnSubmitClicked(){
//        let extractedTextFromTextField = self.usernameTextField?.text
//        self.messageLabel!.text = "Welcome " + extractedTextFromTextField!
//    }
}
