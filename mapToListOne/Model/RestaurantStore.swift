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
    
    @discardableResult func addLocation(name: String, icbm: (Double, Double), contentStatus status: ContentStatus) -> RestaurantLocation {
        let newLocation = RestaurantLocation(title: name, icbm: icbm, contentStatus: status)
        
        allLocations.append(newLocation)
        
        return newLocation
    }
    
    override init() {
        super.init()
        self.addLocation(name: "Takorea", icbm: (33.776892, -84.383149),
                         contentStatus: .notBlank)
        self.addLocation(name: "Ru Sans", icbm: (33.846957, -84.372463),
                         contentStatus: .notBlank)
        self.addLocation(name: "Sushi Huku", icbm: (33.905360, -84.428686),
                         contentStatus: .notBlank)
        self.addLocation(name: "Escorpion", icbm: (33.776495, -84.384844),
                         contentStatus: .notBlank)
        self.addLocation(name: "Manuel's Tavern", icbm: (33.770733, -84.352757),
                         contentStatus: .notBlank)
        self.addLocation(name: "Battle and Brew", icbm: (33.917155, -84.380927),
                         contentStatus: .notBlank)
        self.addLocation(name: "Mirko Pasta", icbm: (33.870006, -84.380633),
                         contentStatus: .notBlank)
        self.addLocation(name: "Superica", icbm: (33.859933, -84.381148),
                         contentStatus: .notBlank)
        self.addLocation(name: "Atlanta Fish Market", icbm: (33.836689, -84.378747),
                         contentStatus: .notBlank)
        self.addLocation(name: "Cafe Sunflower", icbm: (33.812618, -84.393207),
                         contentStatus: .notBlank)
        
        for _ in 1...9 {
            self.addLocation(name: "BLANK", icbm: (0.0, 0.0), contentStatus: .blank)
        }
    }
}
