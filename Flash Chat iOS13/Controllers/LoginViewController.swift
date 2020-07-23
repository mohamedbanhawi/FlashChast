//
//  LoginViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    
    @IBAction func loginPressed(_ sender: UIButton) {
        
        if let email = self.emailTextfield.text, let password = self.passwordTextfield.text {
            
            
            Auth.auth().signIn(withEmail: email, password: password) { authResults, error in
                                if let e = error {
                    // create alert to warn user
                    let alert = UIAlertController(title: "Login Failed", message: e.localizedDescription, preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                    self.present(alert, animated: true)
                } else {
                                    self.performSegue(withIdentifier: K.loginSegue, sender: self)

                }
                
            }
        }
        
    }
    
}
