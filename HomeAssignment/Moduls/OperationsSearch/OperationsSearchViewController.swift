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
    
    var viewModel: OperationsSearchDelegate?
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var searchBar: UISearchBar!
    //    private let appear = PassthroughSubject<Void, Never>()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
//        bind(to: viewModel)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
//        appear.send(())
    }
    
    private func setupView() {
        
        tableView.dataSource = self
        tableView.delegate = self
        
//        definesPresentationContext = true
//        title = "Finacial operations"//NSLocalizedString("Movies", comment: "Top Movies")
//        view.accessibilityIdentifier = AccessibilityIdentifiers.MoviesSearch.rootViewId
//
//        tableView.accessibilityIdentifier = AccessibilityIdentifiers.MoviesSearch.tableViewId
//        tableView.tableFooterView = UIView()
//        tableView.registerNib(cellClass: MovieTableViewCell.self)
//        tableView.dataSource = dataSource
//
//        navigationItem.searchController = self.searchController
//        searchController.isActive = true
//
//        add(alertViewController)
//        alertViewController.showStartSearch()
    }
    
//    private func bind(to viewModel: MoviesSearchViewModelType) {
//        cancellables.forEach { $0.cancel() }
//        cancellables.removeAll()
//        let input = MoviesSearchViewModelInput(appear: appear.eraseToAnyPublisher(),
//                                               search: search.eraseToAnyPublisher(),
//                                               selection: selection.eraseToAnyPublisher())
//
//        let output = viewModel.transform(input: input)
//
//        output.sink(receiveValue: {[unowned self] state in
//            self.render(state)
//        }).store(in: &cancellables)
//    }
    
    
    

}

extension  OperationsSearchViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let viewModel = viewModel else { return 0 }
        guard let operations = viewModel.operations else { return 0 }
        return operations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}

