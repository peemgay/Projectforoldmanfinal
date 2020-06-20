//
//  SettingTableViewController.swift
//  ProjectforOldman
//
//  Created by Peem on 20/6/2563 BE.
//  Copyright © 2563 Peem. All rights reserved.
//

import UIKit

class SettingTableViewController: UITableViewController {
    
    @IBOutlet weak var profile: UIImageView!
    @IBOutlet weak var backView: UIImageView!
    @IBOutlet weak var nameLBL: UILabel!
    @IBOutlet weak var locationLBL: UILabel!
    @IBOutlet weak var cardBioLBL: UILabel!
    @IBOutlet weak var creditCardLBL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profile.image = UIImage(named: "โปรไฟล์-วงกลม")
        backView.image = UIImage(named: "ดาวน์โหลด2")
        
        nameLBL.text = "Peem"
        locationLBL.text = "Bankkok"
        cardBioLBL.text = "Live in Kmutt"
        creditCardLBL.text = "0931292543"
        
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
    @IBAction func logOutButtom(){
      let  vc = storyboard?.instantiateViewController(identifier: "signin") as! SigninViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc,animated: true)
        }
    
    @IBAction func xMarkButtom(){
         let  vc = storyboard?.instantiateViewController(identifier: "tabbar") as! TabbarController
           vc.modalPresentationStyle = .fullScreen
           present(vc,animated: true)
           }
    
}
