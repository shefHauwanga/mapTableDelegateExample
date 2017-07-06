//
//  RestaurantStore.swift
//  mapToListOne
//
//  Created by sheefeni on 7/5/17.
//  Copyright © 2017 ShefCooksCode. All rights reserved.
//

import UIKit

class RestaurantStore: NSObject {
    var allLocations = [RestaurantLocation]()
    
    @discardableResult func addLocation(name: String, icbm: (Double, Double)) -> RestaurantLocation {
        let newLocation = RestaurantLocation(title: name,
                                             icbm: icbm)
        
        allLocations.append(newLocation)
        
        return newLocation
    }
}
