//
//  showViewController.swift
//  Coredata app
//
//  Created by Nirmal Ghediya on 05/10/23.
//

import UIKit

class showViewController: UIViewController {

    var stdata = [Info]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        fetch()
        
    }
    func fetch()
    {
        let dml = DMLModel()
        stdata = dml.showdata()
    }

   

}
extension showViewController:UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stdata.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.lbl_id.text = stdata[indexPath.row].id
        cell.lbl_name.text = stdata[indexPath.row].name
        cell.lbl_field.text = stdata[indexPath.row].field
        return cell
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete
        {
            let dml = DMLModel()
            stdata = dml.deletedata(index: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
            
        }
    }
    
    
}
