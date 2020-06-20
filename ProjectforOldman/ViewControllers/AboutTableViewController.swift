//
//  AboutTableViewController.swift
//  ProjectforOldman
//
//  Created by Peem on 19/6/2563 BE.
//  Copyright © 2563 Peem. All rights reserved.
//

import UIKit

class AboutTableViewController: UITableViewController {

    @IBOutlet weak var profile: UIImageView!
    @IBOutlet weak var backView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profile.image = UIImage(named: "โปรไฟล์-วงกลม")
        backView.image = UIImage(named: "ดาวน์โหลด2")
       
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

    @IBAction func galleryClick(_ sender: Any) {
    let  vc = storyboard?.instantiateViewController(identifier: "gallery") as! GalleryTableViewController
    vc.modalPresentationStyle = .fullScreen
    present(vc,animated: true)
    }
    
    @IBAction func favoritesClock(_ sender: Any) {
    let  vc = storyboard?.instantiateViewController(identifier: "tabbar") as! TabbarController
    vc.modalPresentationStyle = .fullScreen
    present(vc,animated: true)
    }
    
    @IBAction func settingClick(_ sender: Any) {
    let  vc = storyboard?.instantiateViewController(identifier: "setting") as! SettingTableViewController
    vc.modalPresentationStyle = .fullScreen
    present(vc,animated: true)
    }
    
    @IBAction func xMarkButtom(){
            let  vc = storyboard?.instantiateViewController(identifier: "tabbar") as! TabbarController
              vc.modalPresentationStyle = .fullScreen
              present(vc,animated: true)
              }

}
