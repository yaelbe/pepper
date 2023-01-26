//
//  Operation.swift
//  HomeAssignment
//
//  Created by yael bilu eran on 15/01/2023.
//

import Foundation

struct Operations: Decodable {
    var operations: [Operation]
}

struct Operation: Decodable {
    let operationType: String
    let amount: Double
    let source: String?
    let address: String?
    let operationId: Int
    let operationDesc: String?
}
