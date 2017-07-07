//
//  ParentContainerController.swift
//  mapToListOne
//
//  Created by sheefeni on 7/5/17.
//  Copyright © 2017 ShefCooksCode. All rights reserved.
//

import UIKit

protocol TappedAnnotationDelegate {
    func annotationTapped(_ rowNumber: Int)
}

class ParentContainerController: UIViewController, TappedAnnotationDelegate {
    let restaurantStore = RestaurantStore()
    var selectRowDelegate: SelectedRowDelegate?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "ContainerToChildMapView"?:
            let childMapViewController = segue.destination as! ChildMapViewContoller
            childMapViewController.restaurantStore = self.restaurantStore
            childMapViewController.tappedDelegate = self
        case "ContainerToChildTableView"?:
            let locationTableController = segue.destination as! LocationTableViewController
            locationTableController.restaurantStore = self.restaurantStore
            selectRowDelegate = locationTableController
        default:
            preconditionFailure("Unexpected segue identifier")
        }
    }
    
    func annotationTapped(_ rowNumber: Int) {
        if let delegate = selectRowDelegate {
            delegate.pickRow(rowNumber)
        }
    }
}
