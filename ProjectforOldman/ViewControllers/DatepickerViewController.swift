//
//  DatepickerViewController.swift
//  ProjectforOldman
//
//  Created by Peem on 12/6/2563 BE.
//  Copyright © 2563 Peem. All rights reserved.
//

import UIKit

class DatepickerViewController: UIViewController {

    @IBOutlet weak var Picker: UIDatePicker!
    @IBOutlet weak var Label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func Getdate(_ sender: Any) {
        Label.text = "\(Picker.date)"
    }
    
}
