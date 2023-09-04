//
//  TableViewCell.swift
//  Assignment 6
//
//  Created by Nirmal Ghediya on 02/09/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var collect: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension TableViewCell: UICollectionViewDelegate, UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data[collect.tag].productimage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ccell", for: indexPath) as! CollectionViewCell
        cell.myimg.image = UIImage(named: data[collect.tag].productimage[indexPath.row])
        cell.lbl_name.text = (data[collect.tag].productname[indexPath.row])
        return cell
    }
    
    
}
