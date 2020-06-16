//
//  RegisterTableViewController.swift
//  ProjectforOldmanTests
//
//  Created by Peem on 26/5/2563 BE.
//  Copyright © 2563 Peem. All rights reserved.
//

import UIKit

class RegisterTableViewController: UITableViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var confirmEmailTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var eyePasswordButton: UIButton!
    @IBOutlet weak var eyeConfirmPasswordButton: UIButton!
    @IBOutlet weak var register: UIButton!
    @IBOutlet weak var cancel: UIButton!
    
    var registerAPIManager: RegisterAPIManager?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        register.layer.cornerRadius = 20
        register.clipsToBounds = true
        register.layer.shadowRadius = 10
        register.layer.shadowOpacity = 1.0
        register.layer.shadowOffset = CGSize(width: 3, height: 3)
        register.layer.shadowColor = UIColor.green.cgColor
        
        cancel.layer.cornerRadius = 20
        cancel.clipsToBounds = true
        cancel.layer.shadowRadius = 10
        cancel.layer.shadowOpacity = 1.0
        cancel.layer.shadowOffset = CGSize(width: 3, height: 3)
        cancel.layer.shadowColor = UIColor.green.cgColor
        
        setupData()
    }
    
    private func setupData() {
        setupRegisterService()
    }
    
    private func setupRegisterService() {
        registerAPIManager = RegisterAPIManagerImplementation()
        registerAPIManager?.setDelegate(self)
    }
    
    @IBAction func registerButtonTapped() {
        registerAPIManager?.register(optionalName: nameTextField.text,
                                     optionalEmail: emailTextField.text,
                                     optionalConfirmEmail: confirmEmailTextField.text,
                                     optionalPassword: passwordTextField.text,
                                     optionalConfirmPassword: confirmPasswordTextField.text)
    }
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        dismiss(animated: true,
                completion: nil)
    }
    
    @IBAction func eyePasswordButtonTapped(_ sender: Any) {
        updatePasswordTextFieldIsSecureTextEntry()
        updateEyePasswrodButton()
    }
    
    @IBAction func eyeConfirmPasswordButtonTapped(_ sender: Any) {
        updateConfirmPasswordTextFieldIsSecureTextEntey()
        updateEyeConfirmPasswordButton()
    }
    
    private func updateEyePasswrodButton() {
        eyePasswordButton.setImage(
            eyePasswordImage(
                isSecureTextEntry: passwordTextField.isSecureTextEntry),
            for: .normal)
    }
    
    private func updateEyeConfirmPasswordButton() {
        eyeConfirmPasswordButton.setImage(eyePasswordImage(
            isSecureTextEntry: confirmPasswordTextField.isSecureTextEntry),
                                          for: .normal)
    }
    
    private func eyePasswordImage(isSecureTextEntry: Bool) -> UIImage? {
        return isSecureTextEntry
            ? UIImage(named: "button_eye") : UIImage(named: "button_eye_close")
    }
    
    private func updatePasswordTextFieldIsSecureTextEntry() {
        passwordTextField.isSecureTextEntry
            = !passwordTextField.isSecureTextEntry
    }
    
    private func updateConfirmPasswordTextFieldIsSecureTextEntey() {
        confirmPasswordTextField.isSecureTextEntry
            = !confirmPasswordTextField.isSecureTextEntry
    }
    
}

extension RegisterTableViewController: RegisterAPIManagerDelegate {
    
    func didRegisterCompletion() {
        let alertController = UIAlertController(title: "Success",
                                                message: "ลงทะเบียนเสร็จสิ้น",
                                                preferredStyle: .alert)
        let confirmAction = UIAlertAction(title: "Confirm",
                                          style: .default)
        { (_) in
            self.dismiss(animated: true,
                         completion: nil)
        }
        
        alertController.addAction(confirmAction)
        
        present(alertController,
                animated: true,
                completion: nil)
    }
    
    func didRegisterFailure(error: Error) {
        let alertController = UIAlertController(title: "Warning",
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
