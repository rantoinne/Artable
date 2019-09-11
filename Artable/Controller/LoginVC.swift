//
//  LoginVC.swift
//  Artable
//
//  Created by Ravi on 04/09/19.
//  Copyright © 2019 Ravi. All rights reserved.
//

import UIKit
import Firebase

class LoginVC: UIViewController {
    
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var passwordText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func forgotPassBtnClicked(_ sender: Any) {
    }
    
    
    @IBAction func loginClicked(_ sender: Any) {
        
        guard let email = emailText.text , email.isNotEmpty,
            let password = passwordText.text , password.isNotEmpty else { return }
        
        activityIndicator.startAnimating()
        Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
            if let error = error {
                debugPrint(error.localizedDescription)
                self.activityIndicator.stopAnimating()
                return
            }
            
            self.activityIndicator.stopAnimating()
            print("Login successful")
        }
    }
    
    
    @IBAction func guestClicked(_ sender: Any) {
    }
    
}
