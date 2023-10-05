//
//  ViewController.swift
//  Coredata app
//
//  Created by Nirmal Ghediya on 05/10/23.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    
    @IBOutlet weak var txt_name: UITextField!
    @IBOutlet weak var txt_id: UITextField!
    @IBOutlet weak var txt_field: UITextField!
    
    
    let context=(UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    
    

    @IBAction func btn_save(_ sender: Any)
    {
        let dt = ["name":txt_name.text!,
                  "id":txt_id.text!,
                  "field":txt_field.text!]
        
        let dml = DMLModel()
        dml.savedata(data: dt)
        
        do
        {
            try context.save()
            txt_name.text = ""
            txt_id.text = ""
            txt_field.text = ""
            let alert = UIAlertController(title: "Success", message: "Record Insert", preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
        }
        catch
        {
            print(error.localizedDescription)
            let alert = UIAlertController(title: "Failed", message: "Record Not Insert", preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func btn_update(_ sender: Any)
    {
        let fetchreq = NSFetchRequest<NSFetchRequestResult>.init(entityName: "Info")
        let pred = NSPredicate(format: "name=%@", txt_name.text!)
        fetchreq.predicate = pred
        
        do
        {
            let dml = DMLModel()
            let stdata = try dml.context.fetch(fetchreq)
            
            if stdata.count>=1
            {
                
                let update=stdata[0]
                (update as AnyObject).setValue(txt_id.text!, forKey: "id")
                (update as AnyObject).setValue(txt_field.text!, forKey: "field")
                try context.save()
                print("record update")
            }
        }
        catch
        {
            print(error.localizedDescription)
        }
    }
    
    
    @IBAction func btn_showdata(_ sender: Any)
    {
        let show = storyboard?.instantiateViewController(identifier: "showvc") as! showViewController
        //navigationController?.pushViewController(show, animated: true)
        present(show, animated: true, completion: nil)
    }
    
}

