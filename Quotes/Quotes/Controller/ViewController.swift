//
//  ViewController.swift
//  Quotes
//
//  Created by Nirmal Ghediya on 09/10/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var love_view: UIView!
    @IBOutlet weak var fit_view: UIView!
    @IBOutlet weak var gym_image: UIImageView!
    @IBOutlet weak var love_image: UIImageView!
    @IBOutlet weak var btn_love: UIButton!
    @IBOutlet weak var btn_fit: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navigationController?.isNavigationBarHidden = true
        love_view.layer.cornerRadius = 20
        gym_image.layer.cornerRadius = 20
        love_image.layer.cornerRadius = 20
        btn_love.layer.cornerRadius = 20
        btn_fit.layer.cornerRadius = 20
        
        fit_view.layer.cornerRadius = 20
    }

    @IBAction func btn_love(_ sender: Any)
    {
        //view.backgroundColor = UIColor.green
        let lovevc = storyboard?.instantiateViewController(identifier: "lovevc") as! LoveViewController
        navigationController?.pushViewController(lovevc, animated: true)

    }
    
    @IBAction func btn_fit(_ sender: Any)
    {
        //view.backgroundColor = UIColor.blue
        let fitvc = storyboard?.instantiateViewController(identifier: "fitvc") as! FitViewController
        navigationController?.pushViewController(fitvc, animated: true)

    }
}

