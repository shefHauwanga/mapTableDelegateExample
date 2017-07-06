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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "ContainerToChildMapView"?:
            let childMapViewController = segue.destination as! ChildMapViewContoller
            childMapViewController.restaurantStore = self.restaurantStore
        case "ContainerToChildTableView"?:
            print("Table")
        default:
            preconditionFailure("Unexpected segue identifier")
        }
    }

}
