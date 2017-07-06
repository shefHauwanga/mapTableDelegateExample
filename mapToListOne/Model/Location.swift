//
//  Location.swift
//  mapToListOne
//
//  Created by sheefeni on 7/5/17.
//  Copyright © 2017 ShefCooksCode. All rights reserved.
//

import UIKit
import CoreLocation

struct Location {
    let name: String
    let icbm: CLLocationCoordinate2D?
    
    init(name: String, coordinate: (Double, Double)? = nil) {
        self.name = name
        
        if let icbm = coordinate {
            self.icbm = CLLocationCoordinate2D(latitude: icbm.0, longitude: icbm.1)
        } else {
            self.icbm = nil
        }
    }
}
