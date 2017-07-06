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
        
        restaurantStore.addLocation(name: "Takorea", icbm: (33.776892, -84.383149))
        restaurantStore.addLocation(name: "Ru Sans", icbm: (33.846957, -84.372463))
        restaurantStore.addLocation(name: "Sushi Huku", icbm: (33.905360, -84.428686))
        restaurantStore.addLocation(name: "Escorpion", icbm: (33.776495, -84.384844))
        restaurantStore.addLocation(name: "Manuel's Tavern", icbm: (33.770733, -84.352757))
        restaurantStore.addLocation(name: "Battle and Brew", icbm: (33.917155, -84.380927))
        restaurantStore.addLocation(name: "Mirko Pasta", icbm: (33.870006, -84.380633))
        restaurantStore.addLocation(name: "Superica", icbm: (33.859933, -84.381148))
        restaurantStore.addLocation(name: "Atlanta Fish Market", icbm: (33.836689, -84.378747))
        restaurantStore.addLocation(name: "Cafe Sunflower", icbm: (33.812618, -84.393207))
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
