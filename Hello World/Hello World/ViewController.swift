//
//  ViewController.swift
//  Hello World
//
//  Created by Shulun Lyu on 1/14/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblExample: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("I am inside viewDidLoad() function")
        // Do any additional setup after loading the view.
    }

    @IBAction func pressMeAction(_ sender: UIButton) {
        print("Button was pressed")
        lblExample.text = "Hello World"
    }
    
}

