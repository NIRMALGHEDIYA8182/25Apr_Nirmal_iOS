//
//  TableViewCell.swift
//  Assignment 3
//
//  Created by Nirmal Ghediya on 01/09/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lbl_city: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
