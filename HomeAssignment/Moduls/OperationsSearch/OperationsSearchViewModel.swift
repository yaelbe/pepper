//
//  OperationsSearchViewModel.swift
//  HomeAssignment
//
//  Created by yael bilu eran on 15/01/2023.
//

import Foundation

class OperationsSearchViewModel: OperationsSearchDelegate {
    var operations: [Operation]?
    
    init() {
        guard let data = NetrworkManager.shared.parseMockData(filename: "operations") else {
            print("parse data failed") 
            return
        }
        operations = data
    }
}
