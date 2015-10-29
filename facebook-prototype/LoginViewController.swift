//
//  LoginViewController.swift
//  facebook-prototype
//
//  Created by Andy Taylor on 10/29/15.
//  Copyright © 2015 Andy Taylor. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var fieldParentView: UIView!
    @IBOutlet weak var labelParentView: UIView!
    @IBOutlet weak var facebookLogoView: UIImageView!
    @IBOutlet weak var loginButon: UIButton!
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    @IBOutlet weak var signUpLabel: UILabel!
    @IBOutlet weak var helpLabel: UILabel!
    
    @IBOutlet weak var usernameInput: UITextField!
    @IBOutlet weak var passwordInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButon.enabled = false

        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
    }
    
    func keyboardWillShow(notification: NSNotification!) {
        fieldParentView.transform = CGAffineTransformMakeTranslation(0, -50)
        helpLabel.transform = CGAffineTransformMakeTranslation(0, -202)
        facebookLogoView.transform = CGAffineTransformMakeTranslation(0, -15)
        signUpLabel.alpha = 0
    }
    
    @IBAction func didTapBackground(sender: AnyObject) {
        self.view.endEditing(true)
    }
    
    
    @IBAction func inputEditingChanged(sender: AnyObject) {
        if usernameInput.text == "" || passwordInput.text == "" {
            loginButon.enabled = false
        } else {
            loginButon.enabled = true
        }
    }
    
    @IBAction func tapLoginButton(sender: AnyObject) {
        if usernameInput.text != "" && passwordInput.text != "" {
            
            spinner.startAnimating()
            self.loginButon.selected = true
            
            delay(2.0) {    
                self.spinner.stopAnimating()
                self.loginButon.selected = false
                
                if self.usernameInput.text == "ben" && self.passwordInput.text == "security" {
                    // login successful
                    self.performSegueWithIdentifier("login", sender: nil)
                } else {
                    let alertController = UIAlertController(title: "Username or Password Wrong", message: "Fix it yo.", preferredStyle: .Alert)
                    
                    let cancelAction = UIAlertAction(title: "OK", style: .Cancel) { (action) in
                    }
                    
                    alertController.addAction(cancelAction)
                    
                    self.presentViewController(alertController, animated: true) { }
                }
            }
        }
        
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        fieldParentView.transform = CGAffineTransformIdentity
        helpLabel.transform = CGAffineTransformIdentity
        facebookLogoView.transform = CGAffineTransformIdentity
        signUpLabel.alpha = 1
    }
}
