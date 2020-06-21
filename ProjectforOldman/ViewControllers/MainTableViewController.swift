//
//  MainTableViewController.swift
//  ProjectforOldman
//
//  Created by Peem on 16/6/2563 BE.
//  Copyright © 2563 Peem. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {
   
    
    var image = UIImage()
    var name = ""
    
    @IBOutlet weak var tab01: UIView!
    @IBOutlet weak var tab02: UIView!
    @IBOutlet weak var tab03: UIView!
    
    @IBOutlet weak var tab1: UIView!
    @IBOutlet weak var tab2: UIView!
    @IBOutlet weak var tab3: UIView!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var img3: UIImageView!
    
    @IBAction func stepper1(_ sender: UIStepper)
    {
        label1.text = String(sender.value)
    }
    @IBAction func stepper2(_ sender: UIStepper)
    {
        label2.text = String(sender.value)
    }
    @IBAction func stepper3(_ sender: UIStepper)
    {
        label3.text = String(sender.value)
    }
    
    @IBOutlet weak var inputTextField: UITextField!

    private var datePicker: UIDatePicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
     
        
        tab01.layer.cornerRadius = 15
        tab01.clipsToBounds = true
        tab01.layer.shadowRadius = 10
        tab01.layer.shadowOpacity = 1.0
        tab01.layer.shadowOffset = CGSize(width: 3, height: 3)
        tab01.layer.shadowColor = UIColor.green.cgColor
        
        tab02.layer.cornerRadius = 15
        tab02.clipsToBounds = true
        tab02.layer.shadowRadius = 10
        tab02.layer.shadowOpacity = 1.0
        tab02.layer.shadowOffset = CGSize(width: 3, height: 3)
        tab02.layer.shadowColor = UIColor.green.cgColor
        
        tab03.layer.cornerRadius = 15
        tab03.clipsToBounds = true
        tab03.layer.shadowRadius = 10
        tab03.layer.shadowOpacity = 1.0
        tab03.layer.shadowOffset = CGSize(width: 3, height: 3)
        tab03.layer.shadowColor = UIColor.green.cgColor
        
        tab1.layer.cornerRadius = 15
        tab1.clipsToBounds = true
        tab1.layer.shadowRadius = 10
        tab1.layer.shadowOpacity = 1.0
        tab1.layer.shadowOffset = CGSize(width: 3, height: 3)
        tab1.layer.shadowColor = UIColor.green.cgColor
        
        tab2.layer.cornerRadius = 15
        tab2.clipsToBounds = true
        tab2.layer.shadowRadius = 10
        tab2.layer.shadowOpacity = 1.0
        tab2.layer.shadowOffset = CGSize(width: 3, height: 3)
        tab2.layer.shadowColor = UIColor.green.cgColor
        
        tab3.layer.cornerRadius = 15
        tab3.clipsToBounds = true
        tab3.layer.shadowRadius = 10
        tab3.layer.shadowOpacity = 1.0
        tab3.layer.shadowOffset = CGSize(width: 3, height: 3)
        tab3.layer.shadowColor = UIColor.green.cgColor
        
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
        
        img1.image = UIImage(named: "d2979ee4513bbabae7e98cc7b3d190d1e8b017b6")
        img2.image = UIImage(named: "ROOMS-Superior-King_1920x10802-370x276")
        img3.image = UIImage(named: "images")
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
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    

}
