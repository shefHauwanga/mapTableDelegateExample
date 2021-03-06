//
//  ParentContainerController.swift
//  mapToListOne
//
//  Created by sheefeni on 7/5/17.
//  Copyright © 2017 ShefCooksCode. All rights reserved.
//

import UIKit

protocol TappedDelegate {
    func annotationTapped(_ rowNumber: Int)
    func cellTapped(_ rowNumber: Int)
}

class ParentContainerController: UIViewController, TappedDelegate {
    let restaurantStore = RestaurantStore()
    var selectRowDelegate: SelectedRowDelegate?
    var selectAnnotationDelegate: SelectAnnotationDelegate?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "ContainerToChildMapView"?:
            let childMapViewController = segue.destination as! ChildMapViewController
            childMapViewController.restaurantStore = self.restaurantStore
            childMapViewController.tappedDelegate = self
            selectAnnotationDelegate = childMapViewController
        case "ContainerToChildTableView"?:
            let locationTableController = segue.destination as! ChildTableViewController
            locationTableController.restaurantStore = self.restaurantStore
            locationTableController.tappedDelegate = self
            selectRowDelegate = locationTableController
        default:
            preconditionFailure("Unexpected segue identifier")
        }
    }
    
    func annotationTapped(_ rowNumber: Int) {
        selectRowDelegate?.pickRow(rowNumber)
    }
    
    func cellTapped(_ rowNumber: Int) {
        selectAnnotationDelegate?.pickAnnotation(rowNumber)
    }
}
