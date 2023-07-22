//
//  ViewController.swift
//  (5)Alert Action
//
//  Created by Nirmal Ghediya on 20/07/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btn_alert(_ sender: Any)
    {
        let alert = UIAlertController(title: "Textfill", message: "Enter Value", preferredStyle: .alert)
        alert.addTextField {(txtUsername) in
            txtUsername.placeholder = "Username"
            txtUsername.textAlignment = .center
        }
        alert.addTextField {(txtpassword)in
        
            txtpassword.placeholder = "Password"
            txtpassword.textAlignment = .center
            txtpassword.isSecureTextEntry = true
            
        }
        let ok = UIAlertAction(title: "Done", style: .destructive, handler: {ACTION in
            self.lbl1.text=alert.textFields![0].text!
            self.lbl2.text=alert.textFields![1].text!

            
        })
        alert.addAction(ok)
        present(alert, animated: true, completion: nil)
    }
}

