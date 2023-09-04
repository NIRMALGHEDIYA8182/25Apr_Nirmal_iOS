//
//  ViewController.swift
//  Assignment 6
//
//  Created by Nirmal Ghediya on 02/09/23.
//

import UIKit

/*let productlist = productdata(productimage: ["1.jpeg","1.jpeg","1.jpeg","1.jpeg","1.jpeg"], productname: ["Module 1","Module 2","Module 3","Module 4","Module 5"])*/

var data = [productdata(productimage: ["1.jpeg","1.jpeg","1.jpeg","1.jpeg","1.jpeg"], productname: ["Module 1","Module 2","Module 3","Module 4","Module 5"])]

class ViewController: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "tcell") as! TableViewCell
        cell.collect.tag = indexPath.section
        return cell
    }
    
    
}
