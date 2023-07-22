//
//  SecondViewController.swift
//  login2
//
//  Created by Nirmal Ghediya on 12/07/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var lbl_dataname: UILabel!
 
    
    @IBOutlet weak var lbl_datacity: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        _ = ""
        lbl_dataname.text=(UserDefaults.standard.value(forKey: "name") as! String)
        
        lbl_datacity.text=(UserDefaults.standard.value(forKey: "name2") as! String)
       
        

        // Do any additional setup after loading the view.
    }
    

    

}
