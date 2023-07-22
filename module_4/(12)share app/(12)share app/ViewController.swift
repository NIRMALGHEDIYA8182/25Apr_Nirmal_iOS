//
//  ViewController.swift
//  (12)share app
//
//  Created by Nirmal Ghediya on 21/07/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txt_tex: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btn_shre(_ sender: Any)
    {
        let share = UIActivityViewController(activityItems: [txt_tex.text], applicationActivities: nil)
        present(share, animated: true, completion: nil)
    }
}

