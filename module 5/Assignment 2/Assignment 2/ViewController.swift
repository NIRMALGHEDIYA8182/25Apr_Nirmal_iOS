//
//  ViewController.swift
//  Assignment 2
//
//  Created by Nirmal Ghediya on 01/09/23.
//

import UIKit

class ViewController: UIViewController {

    var city = [""]
    var state = [""]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        city = ["Rajkot","Ahmadavad","Vadodara","Gandhinagar"]
        state = ["Gujrat","Gujrat","Gujrat","Gujrat"]
    }


}

extension ViewController: UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return city.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.lbl_city.text = city[indexPath.row]
        cell.lbl_state.text = state[indexPath.row]
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
