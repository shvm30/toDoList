//
//  extension.swift
//  toDoList
//
//  Created by Владимир on 20.02.2023.
//

import UIKit


extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ident, for: indexPath) as? TableViewCell
        cell?.toDoTextLAbel.text = arrayOfToDo[indexPath.row]
        
        return cell ?? UITableViewCell()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfToDo.count
    }
    
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            arrayOfToDo.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
        
    }
    
    func setAlert() {
        let alert = UIAlertController(title: "toDo", message: "Введите задачу", preferredStyle: .alert)
        alert.addTextField()
        let action = UIAlertAction(title: "Ok", style: .default) { action in
            guard let text = alert.textFields?[0].text else {return}
            self.arrayOfToDo.append(text)
            self.tableView.reloadData()
            
        }
        alert.addAction(action)
        self.present(alert, animated: true)
    }
}


