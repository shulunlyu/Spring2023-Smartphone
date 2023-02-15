//
//  TableViewController.swift
//  TableViewControllerExample
//
//  Created by Shulun Lyu on 2/14/23.
//

import UIKit

class TableViewController: UITableViewController {
    
    let friends = ["Ashish", "Bob", "Cindy", "Dylan", "Emily", "Frank", "Goofy", "Helen",
                   "Ashish", "Bob", "Cindy", "Dylan", "Emily", "Frank", "Goofy", "Helen",
                   "Ashish", "Bob", "Cindy", "Dylan", "Emily", "Frank", "Goofy", "Helen"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return friends.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = friends[indexPath.row]

        return cell
    }
    

}
