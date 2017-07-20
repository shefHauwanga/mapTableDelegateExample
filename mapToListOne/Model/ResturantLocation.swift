//
//  ResturantLocation.swift
//  mapToListOne
//
//  Created by sheefeni on 7/5/17.
//  Copyright © 2017 ShefCooksCode. All rights reserved.
//

import UIKit
import MapKit

enum ContentStatus {
    case blank
    case notBlank
}

class RestaurantLocation: NSObject, MKAnnotation {
    var title: String?
    var subtitle: String?
    var coordinate: CLLocationCoordinate2D
    var contentStatus: ContentStatus
    
    init(title: String, icbm: (Double, Double), contentStatus: ContentStatus) {
        self.title = title
        self.subtitle = nil
        self.coordinate = CLLocationCoordinate2D(latitude: icbm.0, longitude: icbm.1)
        self.contentStatus = contentStatus
        
        super.init()
    }
}
