//
//  SigninViewController.swift
//  ProjectforOldmanTests
//
//  Created by Peem on 26/5/2563 BE.
//  Copyright © 2563 Peem. All rights reserved.
//

import UIKit

final class SigninViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signin: UIButton!
    @IBOutlet weak var register: UIButton!
    
    var signinAPIManager: SigninAPIManager?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signin.layer.cornerRadius = 20
        signin.clipsToBounds = true
        signin.layer.shadowRadius = 10
        signin.layer.shadowOpacity = 1.0
        signin.layer.shadowOffset = CGSize(width: 3, height: 3)
        signin.layer.shadowColor = UIColor.green.cgColor
        
        register.layer.cornerRadius = 20
        register.clipsToBounds = true
        register.layer.shadowRadius = 10
        register.layer.shadowOpacity = 1.0
        register.layer.shadowOffset = CGSize(width: 3, height: 3)
        register.layer.shadowColor = UIColor.green.cgColor
        
        setupView()
        setupData()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches,
                           with: event)
        
        view.endEditing(true)
    }

    @IBAction func signinButtonTapped(_ sender: Any) {
        signinAPIManager?.signin(optionalEmail: emailTextField.text,
                                 optionalPassword: passwordTextField.text)
    }
    
    private func setupView() {
        setupTextFields()
    }
    
    private func setupTextFields() {
        let textFields = [emailTextField, passwordTextField]
        
        textFields.forEach{ $0?.delegate = self }
    }
    
    private func setupData() {
        setupServices()
    }
    
    private func setupServices() {
        signinAPIManager = SigninAPIManagerImplementation()
        signinAPIManager?.setSigninAPIManagerDelegate(self)
    }
    
}

extension SigninViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == emailTextField {
            passwordTextField.becomeFirstResponder()
        } else if textField == passwordTextField {
            signinAPIManager?.signin(optionalEmail: emailTextField.text,
                                     optionalPassword: passwordTextField.text)
            passwordTextField.resignFirstResponder()
        }
        return true
    }
    
}

extension SigninViewController: SigninAPIManagerDelegate {
    
    func didSigninCompletion(user: User) {
        let alertController = UIAlertController(title: "Success",
                                                message: "เข้าสู่ระบบเสร็จสิ้น",
                                                preferredStyle: .alert)
        let confirmAction = UIAlertAction(title: "Confirm",
                                          style: .default,
                                          handler: nil)
        
        alertController.addAction(confirmAction)
        
        let  vc = storyboard?.instantiateViewController(identifier: "tabbar") as! TabbarController
        vc.modalPresentationStyle = .fullScreen
        present(vc,animated: true)
        
        /*present(alertController,
                              animated: true,
                              completion: nil)*/
        
       
       
    }
    
    func didSigninFailure(error: Error) {
        let alertController = UIAlertController(title: "Warning!",
                                                message: ErrorHelper.errorMessage(genernalError: error as! GeneralError),
                                                preferredStyle: .alert)
        let confirmAction = UIAlertAction(title: "Confirm",
                                          style: .cancel,
                                          handler: nil)
        
        alertController.addAction(confirmAction)
        
        present(alertController,
                animated: true,
                completion: nil)
    }
    
}
