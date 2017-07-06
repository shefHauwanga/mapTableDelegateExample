//
//  LocationTableViewController.swift
//  mapToListOne
//
//  Created by sheefeni on 7/5/17.
//  Copyright © 2017 ShefCooksCode. All rights reserved.
//

import UIKit

class LocationTableViewController: UIViewController {
    @IBOutlet var tableView: UITableView!
    
    var restaurantStore: RestaurantStore!
    let dataSource = LocationTableDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = dataSource
        dataSource.restaurantLocationStore = restaurantStore
    }
}
