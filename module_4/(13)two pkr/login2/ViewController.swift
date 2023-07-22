//
//  ViewController.swift
//  login2
//
//  Created by Nirmal Ghediya on 11/07/23.
//

import UIKit

class ViewController: UIViewController  {

    @IBOutlet weak var txt_username: UITextField!
    
    
    @IBOutlet weak var txt_city: UITextField!
    
    let pkrview = UIPickerView()
    let pkrview1 = UIPickerView()
    var city = [""]
    
    var state = [""]
    
   
    override func viewDidLoad() {
        super.viewDidLoad()

        //city picker
        city = ["Rajkot","Junagadh","jamnagar","Ahamadabad","Dhroll","Porbandar","Jetpur","Diu"]
        txt_city.inputView = pkrview
        pkrview.dataSource = self
        pkrview.delegate = self
        
        
        state = ["Gujrat","Kerla","Jammu & Kasmir","Rajsthan","Bangluru","Maharashtara","Goa","Kolkata"]
        txt_username.inputView = pkrview1
        pkrview1.dataSource = self
        pkrview1.delegate = self
        
       
         
        
        
    }

    @IBAction func btn_submit(_ sender: Any)
    {
     
        let secondvc = storyboard?.instantiateViewController(identifier: "secondvc") as! SecondViewController
        UserDefaults.standard.setValue(txt_username.text, forKey: "name")
        
        UserDefaults.standard.setValue(txt_city.text, forKey: "name2")
       
        
        
        
        
        
        present(secondvc, animated: true, completion: nil)
        
        
    }
    
    
}

extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate,UINavigationControllerDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return city.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return city[row]
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        txt_city.text=city[row]
        txt_username.text=state[row]
        view.endEditing(true)
    }

   
    
}
