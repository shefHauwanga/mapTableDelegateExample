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
    
    override init() {
        super.init()
        self.addLocation(name: "Takorea", icbm: (33.776892, -84.383149))
        self.addLocation(name: "Ru Sans", icbm: (33.846957, -84.372463))
        self.addLocation(name: "Sushi Huku", icbm: (33.905360, -84.428686))
        self.addLocation(name: "Escorpion", icbm: (33.776495, -84.384844))
        self.addLocation(name: "Manuel's Tavern", icbm: (33.770733, -84.352757))
        self.addLocation(name: "Battle and Brew", icbm: (33.917155, -84.380927))
        self.addLocation(name: "Mirko Pasta", icbm: (33.870006, -84.380633))
        self.addLocation(name: "Superica", icbm: (33.859933, -84.381148))
        self.addLocation(name: "Atlanta Fish Market", icbm: (33.836689, -84.378747))
        self.addLocation(name: "Cafe Sunflower", icbm: (33.812618, -84.393207))
    }
}
