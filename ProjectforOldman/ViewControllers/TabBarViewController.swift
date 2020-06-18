//
//  TabBarViewController.swift
//  ProjectforOldman
//
//  Created by Peem on 17/6/2563 BE.
//  Copyright © 2563 Peem. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func puchTappedButtom() {
        let vc = UIViewController()
        vc.view.backgroundColor = .red
        
        navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func logoutTapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "signin") as! SigninViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc,animated: true)
        
         // dismiss(animated: true, completion: nil)
    }
    
    
}
