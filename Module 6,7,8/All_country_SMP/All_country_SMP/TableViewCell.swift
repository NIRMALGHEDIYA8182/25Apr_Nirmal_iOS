//
//  TableViewCell.swift
//  All_country_SMP
//
//  Created by Nirmal Ghediya on 30/09/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var cell_view: UIView!
    @IBOutlet weak var lbl_country: UILabel!
    @IBOutlet weak var lbl_cpital: UILabel!
    @IBOutlet weak var lbl_population: UILabel!
    
    @IBOutlet weak var flag_img: UIImageView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
