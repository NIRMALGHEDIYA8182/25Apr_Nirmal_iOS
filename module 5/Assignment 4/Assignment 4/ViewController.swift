//
//  ViewController.swift
//  Assignment 4
//
//  Created by Nirmal Ghediya on 01/09/23.
//

import UIKit

class ViewController: UIViewController {

    
    var img = [UIImage]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        img = [#imageLiteral(resourceName: "5"),#imageLiteral(resourceName: "13"),#imageLiteral(resourceName: "14"),#imageLiteral(resourceName: "3"),#imageLiteral(resourceName: "6"),#imageLiteral(resourceName: "5 2"),#imageLiteral(resourceName: "7"),#imageLiteral(resourceName: "8"),#imageLiteral(resourceName: "2 2"),#imageLiteral(resourceName: "4")]
    }


}

extension ViewController: UITableViewDataSource,UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return img.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.myimg.image = img[indexPath.row]
        //cell.myimg.layer.cornerRadius = 8.0
        cell.myimg.layer.masksToBounds = true
        cell.myimg.layer.cornerRadius = cell.myimg.frame.size.width / 2
        
        
        let colors: [UIColor] = [.yellow, .systemPurple, .green, .orange, .brown, .darkGray,.lightGray]
        cell.tab_view.backgroundColor = colors[indexPath.row % colors.count]
        cell.tab_view.layer.cornerRadius = 10
        cell.tab_view.layer.shadowColor = UIColor.systemGray.cgColor
        cell.tab_view.layer.shadowOpacity = 1.0
        cell.tab_view.layer.shadowRadius = 2
        cell.tab_view.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        
        return cell
    }
    
    
}
