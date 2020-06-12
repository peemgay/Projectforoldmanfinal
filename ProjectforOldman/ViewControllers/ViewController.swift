//
//  ViewController.swift
//  ProjectforOldman
//
//  Created by Peem on 7/6/2563 BE.
//  Copyright © 2563 Peem. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableVieweDataSourse {
    
    @IBOutlet var table: UITableView
       
       var models = [Model]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.register(CollectionTableViewCell.nib(), forCellReuseIdentifier: CollectionTableViewCell.identifier)
        table.delegate = self
        table.dataSource = self

        // Do any additional setup after loading the view.
    }
    
//Table


}

struct Model {
    let text: string
    let imageName: string
    
    init(text: string,
         imageName: string) {
        self.text = text
        self.imageName = imageName
    }
    
}
