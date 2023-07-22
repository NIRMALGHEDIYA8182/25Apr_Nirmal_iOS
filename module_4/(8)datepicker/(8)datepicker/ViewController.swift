//
//  ViewController.swift
//  (8)datepicker
//
//  Created by Nirmal Ghediya on 21/07/23.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var lbl_date: UILabel!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    
        
        
        
    }


    @IBAction func datepkr(_ sender: UIDatePicker)
    {
        let date = sender.date
        let dtfrm = DateFormatter()
        //dtfrm = DateFormatter = "dd/MM/yyyy"
        dtfrm.dateStyle = .short
        lbl_date.text = dtfrm.string(from: date)
    }
}

