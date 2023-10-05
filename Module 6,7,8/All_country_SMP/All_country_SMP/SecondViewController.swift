//
//  SecondViewController.swift
//  All_country_SMP
//
//  Created by Nirmal Ghediya on 30/09/23.
//

import UIKit
import SwiftyJSON
import Kingfisher
import Alamofire
import MapKit


class SecondViewController: UIViewController {
    @IBOutlet weak var my_tbl: UITableView!
    
    var apiArray = [APIModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        apicalling()
        
    }
    
    func apicalling()
    {
        
        let url = URL(string: "https://restcountries.com/v3.1/all")
        
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            do
            {
                let json = try JSON(data: data!)
                let finaldata = json.arrayObject?.count
                
                for i in 0..<finaldata!
                {
                    let name = json[i]["name"]["common"].stringValue
                    let cap = json[i]["capital"][0].stringValue
                    let lat = json[i]["latlng"][0].doubleValue
                    let lng = json[i]["latlng"][1].doubleValue
                    let flag = json[i]["flags"]["png"].stringValue
                    let map = json[i]["maps"]["googleMaps"].stringValue
                    let pop = json[i]["population"].intValue
                    
                    self.apiArray.append(APIModel(name: name, flags: flag, maps: map, lat: lat, lng: lng, population: pop, capital: cap))
                }
                
                print(self.apiArray)
                DispatchQueue.main.async {
                    self.my_tbl.reloadData()
                }
                
            }
            catch
            {
                print(error.localizedDescription)
            }
        }.resume()
        
    }

}

extension SecondViewController:UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return apiArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.lbl_country.text = apiArray[indexPath.row].name
        cell.lbl_cpital.text = apiArray[indexPath.row].capital
        cell.lbl_population.text = String((apiArray[indexPath.row]).population!)
        cell.flag_img.kf.setImage(with: URL(string: apiArray[indexPath.row].flags!))
        
        cell.flag_img.layer.cornerRadius = 20
        
        
        
        
        cell.cell_view.layer.cornerRadius = 20.0
        cell.cell_view.layer.borderWidth = 1.0
        cell.cell_view.layer.borderColor = UIColor.lightGray.cgColor
        cell.cell_view.layer.shadowRadius = 2.4
        cell.cell_view.layer.shadowOpacity = 1.5
        cell.cell_view.layer.shadowColor = UIColor.systemGray3.cgColor
        
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let mapvc = (storyboard?.instantiateViewController(identifier: "mapvc")) as! MapViewController
       
        mapvc.latval = apiArray[indexPath.row].lat!
        mapvc.longval = apiArray[indexPath.row].lng!
        navigationController?.pushViewController(mapvc, animated: true)
    
    }
    
}
