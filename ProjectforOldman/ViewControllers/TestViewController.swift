//
//  TestViewController.swift
//  ProjectforOldman
//
//  Created by Peem on 17/6/2563 BE.
//  Copyright © 2563 Peem. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {
    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    @IBOutlet weak var lbl3: UILabel!
    @IBOutlet weak var img: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        img.image = UIImage(named: "1")

        // Do any additional setup after loading the view.
    }
    @IBAction func stepper(_ sender: UIStepper)
    {
        lbl1.text = String(sender.value)
    }
    @IBAction func stepper1(_ sender: UIStepper)
    {
        lbl2.text = String(sender.value)
    }
    @IBAction func stepper2(_ sender: UIStepper)
    {
        lbl3.text = String(sender.value)
    }


}
