//
//  ViewController.swift
//  Assignment 3
//
//  Created by Nirmal Ghediya on 01/09/23.
//

import UIKit

class ViewController: UIViewController {

    var city = [""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        city = ["Rajkot","Ahmadabad","Surat","Vadodara","Gandhinagar"]
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
        cell.accessoryType = .detailButton
        return cell
    }
    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        let alert = UIAlertController(title: city[indexPath.row], message: "This is City", preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .destructive, handler: nil)
        alert.addAction(ok)
        present(alert, animated: true, completion: nil)
    }
    
}
