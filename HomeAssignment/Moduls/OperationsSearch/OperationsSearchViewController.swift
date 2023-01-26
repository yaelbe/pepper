//
//  OperationsSearchViewController.swift
//  HomeAssignment
//
//  Created by yael bilu eran on 15/01/2023.
//

import Foundation
import UIKit
import Combine

class OperationsSearchViewController: UIViewController {
        
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var searchBar: UISearchBar!

    var viewModel: OperationsSearchDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    private func setupView() {
        tableView.dataSource = self
        tableView.delegate = self
    }
}

extension  OperationsSearchViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let viewModel = viewModel,
              let operations = viewModel.operations else { return 0 }
        return operations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let viewModel = viewModel,
              let operations = viewModel.operations else { return UITableViewCell() }
        let cell = UITableViewCell()
        cell.textLabel?.text = operations[indexPath.row].operationType
        return cell
    }
}

