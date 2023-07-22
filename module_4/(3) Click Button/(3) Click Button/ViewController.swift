//
//  ViewController.swift
//  (3) Click Button
//
//  Created by Nirmal Ghediya on 20/07/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var txt: UITextField!
    @IBOutlet weak var lbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btn(_ sender: UIButton)
    {
        lbl.text=txt.text
    }
}

