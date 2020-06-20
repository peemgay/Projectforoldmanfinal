//
//  TestViewController.swift
//  ProjectforOldman
//
//  Created by Peem on 18/6/2563 BE.
//  Copyright © 2563 Peem. All rights reserved.
//

import UIKit

class TestViewController: UIViewController,
UITableViewDelegate,
UITableViewDataSource{
    var datatitle = ["Peem",
    "peem",
    "peem2"];
    var subTitle = ["KM",
    "U",
    "TT"];
    var img = ["1",
    "2",
    "3"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
    }
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return datatitle.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var myCell = tableView.dequeueReusableCell(withIdentifier: "cell2") as! UITableViewCell
        
        myCell.textLabel?.text = datatitle[indexPath.row]
        myCell.detailTextLabel?.text = subTitle[indexPath.row]
        
        myCell.imageView?.image = UIImage(named: img[indexPath.row])
        
        return myCell
    }
 
}

