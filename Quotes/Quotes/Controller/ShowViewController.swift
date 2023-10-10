//
//  ShowViewController.swift
//  Quotes
//
//  Created by Nirmal Ghediya on 10/10/23.
//

import UIKit

class ShowViewController: UIViewController {

    @IBOutlet weak var stack_view: UIView!
    @IBOutlet weak var lbl_quotes: UILabel!
    @IBOutlet weak var lbl_author: UILabel!
    @IBOutlet weak var top_view: UIView!
    @IBOutlet weak var bottom_view: UIView!
    @IBOutlet weak var main_view: UIView!
    
    
    var quotes:String = ""
    var auth:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lbl_quotes.text = quotes
        lbl_author.text = auth
        stack_view.layer.cornerRadius = 20
        main_view.layer.cornerRadius = 20
        top_view.layer.cornerRadius = 20
        bottom_view.layer.cornerRadius = 20
        top_view.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        bottom_view.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        //btn_share.layer.cornerRadius = 18
        
    }
    
    @IBAction func swipe_gst(_ sender: UISwipeGestureRecognizer)
    {
        if sender.direction == .right
        {
            navigationController?.popViewController(animated: true)
        }
    }
    
    
    @IBAction func btn_copy(_ sender: Any)
    {
        UIPasteboard.general.string = lbl_quotes.text
    }
    
}
