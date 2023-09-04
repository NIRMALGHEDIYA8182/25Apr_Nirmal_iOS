//
//  ViewController.swift
//  Assignment 5
//
//  Created by Nirmal Ghediya on 02/09/23.
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
        let colors: [UIColor] = [.yellow, .systemPurple, .green, .orange, .brown, .darkGray,.lightGray]
        cell.tab_view.backgroundColor = colors[indexPath.row % colors.count]
        cell.tab_view.layer.cornerRadius = 10
        cell.tab_view.layer.shadowColor = UIColor.systemGray.cgColor
        cell.tab_view.layer.shadowOpacity = 1.0
        cell.tab_view.layer.shadowRadius = 2
        cell.tab_view.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        return cell
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath)
        {
            if editingStyle == .delete
            {
                self.city.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .automatic)
            }
        
            
        }
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]?
       {
        
           let btn1=UITableViewRowAction(style: .default, title: "Add") { (btnadd, indexpath) in
               print("Add button")
           }
           btn1.backgroundColor = .orange
           let btn2=UITableViewRowAction(style:.normal, title: "Update") { (btnadd, indexpath) in
               print("Update button")
           }
           let btn3=UITableViewRowAction(style: .destructive, title: "Delete") { (btnadd, indexpath) in
               print("Delete button")
               self.city.remove(at: indexPath.row)
        
               tableView.deleteRows(at: [indexPath], with: .automatic)
           }
           return [btn1,btn2,btn3]
       }
    
}
