//
//  ViewController.swift
//  (11)Color Picker
//
//  Created by Nirmal Ghediya on 21/07/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txt_clr: UITextField!
    
    var clor = UIPickerView()
    var clr = [""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        clr = ["Red","Blue","Green","Pink","Black"]
        txt_clr.inputView = clor
        clor.dataSource=self
        clor.delegate=self
    }
    


}
extension ViewController: UIPickerViewDataSource,UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return clr.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return clr[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        view.endEditing(true)
        txt_clr.text = clr[row]
        
        if row==0
        {
            view.backgroundColor = .red
        }
        else if row==1
        {
            view.backgroundColor = .blue
        }
        else if row==2
        {
            view.backgroundColor = .green
        }
        else if row==3
        {
            view.backgroundColor = .systemPink
        }
        else
        {
            view.backgroundColor = .black
        }
    }
    
    
}
