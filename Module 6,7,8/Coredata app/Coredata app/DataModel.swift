//
//  DataModel.swift
//  Coredata app
//
//  Created by Nirmal Ghediya on 05/10/23.
//

import Foundation
import CoreData
import UIKit

class DMLModel: NSObject
{
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    func savedata(data:[String:Any])
    {
        let insertdata = NSEntityDescription.insertNewObject(forEntityName: "Info", into: context) as! Info
        insertdata.name = (data["name"]as! String)
        insertdata.id = (data["id"]as! String)
        insertdata.field = (data["field"]as! String)
    }
    
    func showdata()->[Info]
    {
        var stdata = [Info]()
        
        do
        {
            stdata=try context.fetch(NSFetchRequest<NSFetchRequestResult>.init(entityName: "Info")) as! [Info]
        }
        catch
        {
            print(error.localizedDescription)
        }
        return stdata
    }
    
    func deletedata(index:Int)->[Info]
    {
        var stdata = showdata()
        context.delete(stdata[index])
        stdata.remove(at: index)
        
        do{
            try context.save()
        }
        catch
        {
            print(error.localizedDescription)
        }
        return stdata
    }
}
