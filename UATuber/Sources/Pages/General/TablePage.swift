//
//  TablePage.swift
//  UATuber
//
//  Created by Bogdan Sasko on 2/28/19.
//  Copyright © 2019 vinso. All rights reserved.
//

import UIKit

class TablePage: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension TablePage: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        // do nothing
    }
}
