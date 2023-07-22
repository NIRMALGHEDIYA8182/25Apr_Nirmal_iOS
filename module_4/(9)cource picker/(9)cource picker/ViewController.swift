//
//  ViewController.swift
//  (9)cource picker
//
//  Created by Nirmal Ghediya on 21/07/23.
//

import UIKit

class ViewController: UIViewController {

    
    
    
    
    
    
    @IBOutlet weak var txt_sub: UITextField!
  
    var phrview = UIPickerView()
    var subject = [""]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        subject = ["Red","Blue","Orenge","Green","Black","Pink"]
        txt_sub.inputView=phrview
        
        phrview.dataSource=self
        phrview.delegate=self
        
    }


}

extension ViewController: UIPickerViewDataSource,UIPickerViewDelegate{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return subject.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return subject[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        txt_sub.text=subject[row]
        view.endEditing(true)
        
    }
    
    
}
