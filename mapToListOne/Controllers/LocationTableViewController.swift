//
//  LocationTableViewController.swift
//  mapToListOne
//
//  Created by sheefeni on 7/5/17.
//  Copyright © 2017 ShefCooksCode. All rights reserved.
//

import UIKit

class LocationTableViewController: UIViewController, UITableViewDelegate {
    @IBOutlet var tableView: UITableView!
    
    var restaurantStore: RestaurantStore!
    let dataSource = LocationTableDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = dataSource
        tableView.delegate = self
        dataSource.restaurantLocationStore = restaurantStore
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.tableView.scrollToRow(at: indexPath, at: .top, animated: true)
    }
}
