//
//  ViewController2.swift
//  ProjectforOldman
//
//  Created by Peem on 21/6/2563 BE.
//  Copyright © 2563 Peem. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    @IBOutlet var table: UITableView!
    
     var animalArray = [Animal]()
    var currentAnimalArray = [Animal]()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpAnimals()

        // Do any additional setup after loading the view.
    }
    private func setUpAnimals() {
        // CATS
        animalArray.append(Animal(name: "ช้างน้อย รีสอร์ท", image:"ช้างน้อย"))
        animalArray.append(Animal(name: "Novotel Hua Hin Cha Am Beach", image:"7"))
        animalArray.append(Animal(name: "ทอแสง ซิตี้", image:"8"))
        // DOGS
        animalArray.append(Animal(name: "โฆษะ", image:"9"))
        
        
        currentAnimalArray = animalArray
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currentAnimalArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as? TableCell else {
            return UITableViewCell()
        }
        cell.foodnameOne.text = currentAnimalArray[indexPath.row].name
        
        cell.imgView.image = UIImage(named:currentAnimalArray[indexPath.row].image)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
class Animal {
    let name: String
    let image: String
  // let category: AnimalType
    
    init(name: String, image: String) {
        self.name = name
       // self.category = category
        self.image = image
    }
}

