//
//  LocationStore.swift
//  mapToListOne
//
//  Created by sheefeni on 7/5/17.
//  Copyright © 2017 ShefCooksCode. All rights reserved.
//

import UIKit

class LocationStore: NSObject {
    var allLocations = [Location]()
    
    @discardableResult func addLocation(name: String, latLong: (Double, Double)) -> Location {
        let newLocation = Location(name: name, coordinate: latLong)
        
        allLocations.append(newLocation)
        
        return newLocation
    }
}
