//
//  ViewController.swift
//  TwoTables
//
//  Created by Shulun Lyu on 2/14/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let restaurants = ["Pizzahut", "Shakeshack", "Chickfila", "KFC"]
    let Pfood = ["Fries", "Pasta", "Burger"]
    let Sfood = ["Burger", "Fries", "Milkshake"]
    let Cfood = ["Nuggets", "Wings", "Lemonade"]
    let Kfood = ["Cone", "Burger", "Coke"]
    
    var selectedFoods = [String]()

    @IBOutlet weak var tblViewTop: UITableView!
    
    @IBOutlet weak var tblViewBottom: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == tblViewTop {
            return restaurants.count
        }else{
            return selectedFoods.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == tblViewTop {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = restaurants[indexPath.row]
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = selectedFoods[indexPath.row]
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView == tblViewTop {
            switch indexPath.row{
            case 0:
                selectedFoods = Pfood
            case 1:
                selectedFoods = Sfood
            case 2:
                selectedFoods = Cfood
            case 3:
                selectedFoods = Kfood
            default:
                selectedFoods = []
            }
            tblViewBottom.reloadData()
        }
    }

}

