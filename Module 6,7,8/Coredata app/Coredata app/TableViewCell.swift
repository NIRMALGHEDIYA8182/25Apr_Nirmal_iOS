//
//  TableViewCell.swift
//  Coredata app
//
//  Created by Nirmal Ghediya on 05/10/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    
//    @IBOutlet weak var lbl_name: UILabel!
//    @IBOutlet weak var lbl_id: UILabel!
//    @IBOutlet weak var lbl_field: UILabel!
    
    @IBOutlet weak var lbl_name: UILabel!
    @IBOutlet weak var lbl_id: UILabel!
    @IBOutlet weak var lbl_field: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
