//
//  ViewController.swift
//  (4)hide and show
//
//  Created by Nirmal Ghediya on 20/07/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var lbl: UILabel!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btn_hide(_ sender: Any)
    {
        lbl.isHidden = true
    }
    @IBAction func btn_sho(_ sender: Any)
    {
        lbl.isHidden = false
    }
    
}

