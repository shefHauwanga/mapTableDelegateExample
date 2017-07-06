//
//  ChildMapViewContoller.swift
//  mapToListOne
//
//  Created by sheefeni on 7/5/17.
//  Copyright © 2017 ShefCooksCode. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ChildMapViewContoller: UIViewController {
    @IBOutlet var mapView: MKMapView!
    //var locationManager = CLLocationManager.init()
    
    var restaurantStore: RestaurantStore!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //locationManager.requestWhenInUseAuthorization()
        
        mapView.mapType = .standard
        let home = CLLocationCoordinate2D(latitude: 33.839430, longitude: -84.379853)
        let span = MKCoordinateSpan.init(latitudeDelta: 0.175, longitudeDelta: 0.175)
        let region = MKCoordinateRegion.init(center: home, span: span)
        mapView.setRegion(region, animated: true)
    }
}
