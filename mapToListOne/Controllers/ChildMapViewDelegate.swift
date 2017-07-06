//
//  ChildMapViewDelegate.swift
//  mapToListOne
//
//  Created by sheefeni on 7/6/17.
//  Copyright © 2017 ShefCooksCode. All rights reserved.
//

import UIKit
import MapKit

extension ChildMapViewContoller: MKMapViewDelegate {
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        if let annotation = annotation as? RestaurantLocation {
            let identifier = "pin"
            var view: MKPinAnnotationView
            if let dequeuedView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier) as? MKPinAnnotationView {
                dequeuedView.annotation = annotation
                view = dequeuedView
            } else {
                view = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
                view.canShowCallout = true
                view.calloutOffset = CGPoint(x: -5, y: 5)
                view.rightCalloutAccessoryView = UIButton(type: .detailDisclosure) as UIView
            }
            return view
        }
        return nil
    }
    
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        if let restaurantLocation = view.annotation {
            zoom(coordinate: restaurantLocation.coordinate)
        }
    }

}