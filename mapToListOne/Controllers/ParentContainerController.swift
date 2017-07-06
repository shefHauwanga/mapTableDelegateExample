//
//  ParentContainerController.swift
//  mapToListOne
//
//  Created by sheefeni on 7/5/17.
//  Copyright © 2017 ShefCooksCode. All rights reserved.
//

import UIKit

class ParentContainerController: UIViewController {
    let restaurantStore = RestaurantStore()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        restaurantStore.addLocation(name: "Takorea", icbm: (0.0, 0.0))
        restaurantStore.addLocation(name: "Ru Sans", icbm: (0.0, 0.0))
        restaurantStore.addLocation(name: "Sushi Huku", icbm: (0.0, 0.0))
        restaurantStore.addLocation(name: "Escorpion", icbm: (0.0, 0.0))
        restaurantStore.addLocation(name: "Manuel's Tavern", icbm: (0.0, 0.0))
        restaurantStore.addLocation(name: "Battle and Brew", icbm: (0.0, 0.0))
        restaurantStore.addLocation(name: "Mirko Pasta", icbm: (0.0, 0.0))
        restaurantStore.addLocation(name: "Superica", icbm: (0.0, 0.0))
        restaurantStore.addLocation(name: "Atlanta Fish Market", icbm: (0.0, 0.0))
        restaurantStore.addLocation(name: "Cafe Sunflower", icbm: (0.0, 0.0))
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "ContainerToChildMapView"?:
            print("Map")
            let childMapViewController = segue.destination as! ChildMapViewContoller
            childMapViewController.restaurantStore = self.restaurantStore
        case "ContainerToChildTableView"?:
            print("Table")
        default:
            preconditionFailure("Unexpected segue identifier")
        }
    }

}
