//
//  ViewController.swift
//  ClassicTableViewController
//
//  Created by Shulun Lyu on 2/13/23.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    let friends = ["Ashish", "Bob", "Cindy", "Dylan", "Emily", "Frank", "Goofy", "Helen",
                   "Ashish", "Bob", "Cindy", "Dylan", "Emily", "Frank", "Goofy", "Helen",
                   "Ashish", "Bob", "Cindy", "Dylan", "Emily", "Frank", "Goofy", "Helen"]
    
    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        tblView.delegate = self
//        tblView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = friends[indexPath.row]
        
        return cell
    }


}

