//
//  ViewController.swift
//  toDoList
//
//  Created by Владимир on 20.02.2023.
//

import UIKit

class ViewController: UIViewController {
    let ident = "ident"
   
    @IBOutlet weak var tableView: UITableView!
    var arrayOfToDo = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "ident")
    }
    
    @IBAction func onButton(_ sender: Any) {
        setAlert()
    }
}


