//
//  TableViewCell.swift
//  NewToDO
//
//  Created by Владимир on 11.03.2023.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var toDoTextLAbel: UILabel!
    @IBOutlet weak var but: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    @IBAction func pressed(_ sender: Any) {
        but.setImage(UIImage(systemName: "checkmark.circle"), for: .normal)
    }
}
