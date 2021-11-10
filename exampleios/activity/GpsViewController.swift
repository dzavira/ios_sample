//
//  GpsViewController.swift
//  exampleios
//
//  Created by TRIAL on 10/11/21.
//

import UIKit
import CoreLocation

class GpsViewController: UIViewController, CLLocationManagerDelegate {

    private var locationManager:CLLocationManager?
    var Latitude:String=""
    var Longitude:String=""
    
    @IBOutlet weak var lbLatLong: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        locationManager = CLLocationManager()
        locationManager?.requestAlwaysAuthorization()
        locationManager?.startUpdatingLocation()
        locationManager?.delegate = self
        locationManager?.allowsBackgroundLocationUpdates = true
        
    }
     
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.last{
            Latitude = String(location.coordinate.latitude)
            Longitude = String(location.coordinate.longitude)
            print("Latitude: \(Latitude) \r\n longitude: \(Longitude)")
            lbLatLong.text = "Latitude: \(Latitude) \r\n longitude: \(Longitude)"
        }
    }
    

}

