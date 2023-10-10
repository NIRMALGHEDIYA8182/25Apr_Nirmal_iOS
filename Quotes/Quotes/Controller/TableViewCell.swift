//
//  TableViewCell.swift
//  Quotes
//
//  Created by Nirmal Ghediya on 09/10/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var cell_img: UIImageView!
    @IBOutlet weak var cell_pink: UIView!
    @IBOutlet weak var lbl_quotes: UILabel!
    @IBOutlet weak var lbl_author: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
