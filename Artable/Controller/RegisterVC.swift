//
//  RegisterVC.swift
//  Artable
//
//  Created by Ravi on 04/09/19.
//  Copyright © 2019 Ravi. All rights reserved.
//

import UIKit
import Firebase

class RegisterVC: UIViewController  {
    
    //Outlets
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var confirmPassTxt: UITextField!
    
    @IBOutlet weak var confirmPassCheckImg: UIImageView!
    @IBOutlet weak var passCheckImg: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        passwordTxt.addTarget(self, action: #selector(textFieldDidChange(_:)), for: UIControl.Event.editingChanged)
        confirmPassTxt.addTarget(self, action: #selector(textFieldDidChange(_:)), for: UIControl.Event.editingChanged)
    }
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        
        
        
        if textField == confirmPassTxt && confirmPassTxt.text != "" {
            passCheckImg.isHidden = false
            confirmPassCheckImg.isHidden = false
        } else {
            passCheckImg.isHidden = true
            confirmPassCheckImg.isHidden = true
        }
        
        if passwordTxt.text == confirmPassTxt.text {
            passCheckImg.image = UIImage(named: AppImages.GreenCheck)
            confirmPassCheckImg.image = UIImage(named: AppImages.GreenCheck)
        } else {
            passCheckImg.image = UIImage(named: AppImages.RedCheck)
            confirmPassCheckImg.image = UIImage(named: AppImages.RedCheck)
        }
    }
    
    @IBAction func registerClicked(_ sender: Any) {
        guard let email = emailTxt.text , email.isNotEmpty ,
            let username = usernameTxt.text , username.isNotEmpty,
            let password = passwordTxt.text , password.isNotEmpty else { return }
        
        activityIndicator.startAnimating()
        
        Auth.auth().createUser(withEmail: email, password: password) { (authResult, error) in
            if let error = error {
                debugPrint(error)
                return
            }
            self.activityIndicator.stopAnimating()
            
            print("Successfully registered new user");
        }
    }
}
