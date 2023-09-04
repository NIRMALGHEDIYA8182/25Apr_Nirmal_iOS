//
//  TableViewCell.swift
//  Assignment 1
//
//  Created by Nirmal Ghediya on 01/09/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lbl_city: UILabel!
    @IBOutlet weak var lbl_state: UILabel!
    @IBOutlet weak var tab_view: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
       
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
