//
//  LocationTableViewController.swift
//  mapToListOne
//
//  Created by sheefeni on 7/5/17.
//  Copyright © 2017 ShefCooksCode. All rights reserved.
//

import UIKit

protocol SelectedRowDelegate {
    func pickRow(_ rowNumber: Int)
}

class LocationTableViewController: UIViewController, UITableViewDelegate, SelectedRowDelegate {
    @IBOutlet var tableView: UITableView!
    
    var restaurantStore: RestaurantStore!
    var tappedDelegate: TappedCellDelegate?
    let dataSource = LocationTableDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = dataSource
        tableView.delegate = self
        dataSource.restaurantLocationStore = restaurantStore
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.tableView.scrollToRow(at: indexPath, at: .top, animated: true)
        tappedDelegate?.cellTapped(indexPath.row)
    }
    
    func pickRow(_ rowNumber: Int) {
        let indexPath = IndexPath(row: rowNumber, section: 0)
        self.tableView.selectRow(at: indexPath, animated: true, scrollPosition: .top)
    }
}
