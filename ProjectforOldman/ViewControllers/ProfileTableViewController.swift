//
//  ProfileTableViewController.swift
//  ProjectforOldman
//
//  Created by Peem on 18/6/2563 BE.
//  Copyright © 2563 Peem. All rights reserved.
//

import UIKit

class ProfileTableViewController: UITableViewController {
    @IBOutlet weak var profile1: UIImageView!
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var img3: UIImageView!
    @IBOutlet weak var img4: UIImageView!
    @IBOutlet weak var backView: UIStackView!
    @IBOutlet weak var aboutButton: UIButton!
    @IBOutlet weak var favouritesButton: UIButton!
    @IBOutlet weak var galleryButton: UIButton!
    @IBOutlet weak var backview: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profile1.image = UIImage(named: "โปรไฟล์-วงกลม")
        
        img1.image = UIImage(named: "3")
        img2.image = UIImage(named: "4")
        img3.image = UIImage(named: "5")
        img4.image = UIImage(named: "2")
        backview.image = UIImage(named: "ดาวน์โหลด2")
    }
    
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 0
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 0
    }
    
    @IBAction func onClickRound(_ sender: Any) {
        let  vc = storyboard?.instantiateViewController(identifier: "about") as! AboutTableViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc,animated: true)
        
        changeButtonColor(roundColor: #colorLiteral(red: 0.2666666667, green: 0.7333333333, blue: 1, alpha: 1), roundTxtColor: .white)
    }
    
    @IBAction func onClickOneWay(_ sender: Any) {
        changeButtonColor(oneWayColor: #colorLiteral(red: 0.2666666667, green: 0.7333333333, blue: 1, alpha: 1), oneWayTxtColor: .white)
    }
    
    @IBAction func onClickMulti(_ sender: Any) {
        let  vc = storyboard?.instantiateViewController(identifier: "gallery") as! GalleryTableViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc,animated: true)
        
        changeButtonColor(multiColor: #colorLiteral(red: 0.4119389951, green: 0.8247622848, blue: 0.9853010774, alpha: 1), multiTxtColor: .white)
    }
    
    func changeButtonColor(roundColor: UIColor = .white , oneWayColor: UIColor = .white, multiColor: UIColor = .white, roundTxtColor: UIColor = #colorLiteral(red: 0.2666666667, green: 0.7333333333, blue: 1, alpha: 1), oneWayTxtColor: UIColor = #colorLiteral(red: 0.2666666667, green: 0.7333333333, blue: 1, alpha: 1), multiTxtColor: UIColor = #colorLiteral(red: 0.2666666667, green: 0.7333333333, blue: 1, alpha: 1)) {
        
        aboutButton.backgroundColor = roundColor
        aboutButton.setTitleColor(roundTxtColor, for: .normal)
        
        favouritesButton.backgroundColor = oneWayColor
        favouritesButton.setTitleColor(oneWayTxtColor, for: .normal)
        
        galleryButton.backgroundColor = multiColor
        galleryButton.setTitleColor(multiTxtColor, for: .normal)
    }
    
    @IBAction func settingClick(_ sender: Any) {
    let  vc = storyboard?.instantiateViewController(identifier: "setting") as! SettingTableViewController
    vc.modalPresentationStyle = .fullScreen
    present(vc,animated: true)
    }
    
    
    
}
