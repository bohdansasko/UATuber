//
//  ViewController.swift
//  UATuber
//
//  Created by Bogdan Sasko on 2/27/19.
//  Copyright © 2019 vinso. All rights reserved.
//

import UIKit

class HomePage: TablePage {
    let viewModel = HomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = viewModel.pageTitle
        viewModel.configureTableView(for: tableView)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRows(in: section)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: viewModel.cellId) as? VideoCell else {
            return UITableViewCell()
        }
        cell.viewModel = viewModel.getCellViewModel(for: indexPath.item)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        guard let videoCell = cell as? VideoCell else {
            return
        }
        videoCell.configure()
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return viewModel.getRowHeight(viewWidth: view.frame.width)
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        viewModel.onDidSelectRow(at: indexPath)
    }
}
