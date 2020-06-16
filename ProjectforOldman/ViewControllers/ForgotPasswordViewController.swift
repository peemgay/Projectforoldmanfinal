//
//  ForgotPasswordViewController.swift
//  ProjectforOldman
//
//  Created by Peem on 27/5/2563 BE.
//  Copyright © 2563 Peem. All rights reserved.
//

import UIKit

class ForgotPasswordViewController: UITableViewController {
    
    
    @IBOutlet weak var userEmailTextField: UITextField!
    @IBOutlet weak var send: UIButton!
    @IBOutlet weak var cancel: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        send.layer.cornerRadius = 20
        send.clipsToBounds = true
        send.layer.shadowRadius = 10
        send.layer.shadowOpacity = 1.0
        send.layer.shadowOffset = CGSize(width: 3, height: 3)
        send.layer.shadowColor = UIColor.green.cgColor
        
        cancel.layer.cornerRadius = 20
        cancel.clipsToBounds = true
        cancel.layer.shadowRadius = 10
        cancel.layer.shadowOpacity = 1.0
        cancel.layer.shadowOffset = CGSize(width: 3, height: 3)
        cancel.layer.shadowColor = UIColor.green.cgColor
        
       
    }
    
    @IBAction func cancelTapButton()
    {
           let vc = storyboard?.instantiateViewController(identifier: "signin") as! SigninViewController
           vc.modalPresentationStyle = .fullScreen
           present(vc,animated: true)
    }
    
    @IBAction func recoverButtonTapped(_ sender: AnyObject) {
        
        let userEmail = userEmailTextField.text
        
        User.confirmEmailTextField(userEmail) {
            (success:Bool, error:NSError?) -> Void in
            
            if(success)
            {
                let successMessage = "Email message was sent to you at \(userEmail)"
                self.displayMessage(successMessage)
                return
            }
            
            if(error != nil)
            {
                let errorMessage:String = error!.userInfo!["error"] as! String
                self.displayMessage(errorMessage)
            }
        }
    }
        
    func displayMessage(theMessage:String)
    {
        let myAlert = UIAlertController(title:"Alert", message:theMessage, preferredStyle: UIAlertController.Style.alert);
        
        let okAction = UIAlertAction(title: "OK", style:UIAlertAction.Style.default){
            action in
            self.dismiss(animated: true, completion:nil);
        }
        myAlert.addAction(okAction);
        self.present(myAlert, animated:true, completion:nil);
    }
    
}

