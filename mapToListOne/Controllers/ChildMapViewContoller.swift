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
    
    var restaurantStore: RestaurantStore!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.delegate = self
        mapView.mapType = .standard
        let home = CLLocationCoordinate2D(latitude: 33.861433, longitude: -84.380333)
        let span = MKCoordinateSpan.init(latitudeDelta: 0.2, longitudeDelta: 0.2)
        let region = MKCoordinateRegion.init(center: home, span: span)
        mapView.setRegion(region, animated: true)
        
        for location in restaurantStore.allLocations {
            mapView.addAnnotation(location)
        }
    }
    
    func zoom(coordinate icbm: CLLocationCoordinate2D) {
        let span = MKCoordinateSpan.init(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let region = MKCoordinateRegion.init(center: icbm, span: span)
        mapView.setRegion(region, animated: true)
    }    
}
