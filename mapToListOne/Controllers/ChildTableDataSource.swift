//
//  ChildTableDataSource.swift
//  mapToListOne
//
//  Created by sheefeni on 7/7/17.
//  Copyright © 2017 ShefCooksCode. All rights reserved.
//

import UIKit

class ChildTableDataSource: NSObject, UITableViewDataSource {
    var restaurantLocationStore: RestaurantStore!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantLocationStore.allLocations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "locationCell", for: indexPath) as! LocationTableViewCell
        
        let restaurantLocation = restaurantLocationStore.allLocations[indexPath.row]
        
        switch restaurantLocation.contentStatus {
        case .blank:
            cell.isUserInteractionEnabled = false
            cell.locationNameLabel.text = ""
        case .notBlank:
            cell.isUserInteractionEnabled = true
            cell.locationNameLabel.text = restaurantLocation.title
        }
        
        return cell
    }
}
