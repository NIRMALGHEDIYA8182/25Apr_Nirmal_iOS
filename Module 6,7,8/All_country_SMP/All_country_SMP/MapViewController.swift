//
//  MapViewController.swift
//  All_country_SMP
//
//  Created by Nirmal Ghediya on 30/09/23.
//

import UIKit
import WebKit
import MapKit
import CoreLocation

class MapViewController: UIViewController {

    @IBOutlet weak var my_map: MKMapView!
    //    var mapURL = ""
    var latval:Double=0.0
    var longval:Double=0.0
   
    
    var locationmanager = CLLocationManager()
    var locationcoordinate = CLLocationCoordinate2D()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("lat:\(latval)")
        print("long:\(longval)")
       
        
        openmap()
       
        
        
        
        locationmanager.requestAlwaysAuthorization()
        
//        
        
        
    }
    

    func openmap()
    {

        let annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude: latval, longitude:longval)

                my_map.addAnnotation(annotation)
    }

    
    

    @IBAction func swipe_gst(_ sender: UISwipeGestureRecognizer)
    {
        if sender.direction == .right
        {
            navigationController?.popViewController(animated: true)
        }
    }
    

}
