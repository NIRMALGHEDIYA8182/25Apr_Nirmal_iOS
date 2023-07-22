//
//  ViewController.swift
//  (2) ALERT
//
//  Created by Nirmal Ghediya on 20/07/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txt_user: UITextField!
    @IBOutlet weak var txt_pass: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btn_login(_ sender: Any)
    {
        let alert = UIAlertController(title: "Alert", message: "Log In Successfully", preferredStyle: .alert)
        let btn1 = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(btn1)
        present(alert, animated: true, completion: nil)
    }
    
}

