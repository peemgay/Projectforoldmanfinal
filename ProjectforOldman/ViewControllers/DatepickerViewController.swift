//
//  DatepickerViewController.swift
//  ProjectforOldman
//
//  Created by Peem on 12/6/2563 BE.
//  Copyright © 2563 Peem. All rights reserved.
//

import UIKit

class DatepickerViewController: UIViewController {
    
    @IBOutlet weak var inputTextField: UITextField!

    private var datePicker: UIDatePicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputTextField.layer.cornerRadius = 20
        inputTextField.clipsToBounds = true
        inputTextField.layer.shadowRadius = 10
        inputTextField.layer.shadowOpacity = 1.0
        inputTextField.layer.shadowOffset = CGSize(width: 3, height: 3)
        inputTextField.layer.shadowColor = UIColor.green.cgColor
        
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        datePicker?.addTarget(self, action: #selector(dateChanged(datePicker:)), for: .valueChanged)
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(viewTapped(gestureRecognizer:)))
        
        view.addGestureRecognizer(tapGesture)
        
        inputTextField.inputView = datePicker
    }
    
    @objc func viewTapped(gestureRecognizer: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    @objc func dateChanged(datePicker: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        inputTextField.text = dateFormatter.string(from: datePicker.date)
        view.endEditing(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
