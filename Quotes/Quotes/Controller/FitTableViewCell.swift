//
//  FitTableViewCell.swift
//  Quotes
//
//  Created by Nirmal Ghediya on 09/10/23.
//

import UIKit

class FitTableViewCell: UITableViewCell {

    @IBOutlet weak var cell_img: UIImageView!
    @IBOutlet weak var lbl_shayri: UILabel!
    @IBOutlet weak var lbl_lekhak: UILabel!
    @IBOutlet weak var cell_view: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
