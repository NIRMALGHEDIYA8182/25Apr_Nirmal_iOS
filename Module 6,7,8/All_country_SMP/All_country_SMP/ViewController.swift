//
//  ViewController.swift
//  All_country_SMP
//
//  Created by Nirmal Ghediya on 29/09/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var first_view: UIView!
    @IBOutlet weak var bottom_view: UIView!
    @IBOutlet weak var activity: UIActivityIndicatorView!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //navigationController?.isNavigationBarHidden = true
        
        first_view.layer.cornerRadius = 20.0
        first_view.layer.borderWidth = 1.0
        first_view.layer.borderColor = UIColor.lightGray.cgColor
        first_view.layer.shadowRadius = 2.4
        first_view.layer.shadowOpacity = 1.5
        first_view.layer.shadowColor = UIColor.systemGray3.cgColor
        
        bottom_view.layer.cornerRadius = 20.0
        first_view.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 4){
            let secondvc = self.storyboard?.instantiateViewController(identifier: "secondvc") as! SecondViewController
            self.navigationController?.pushViewController(secondvc, animated: true)
        }
        
    }


}

