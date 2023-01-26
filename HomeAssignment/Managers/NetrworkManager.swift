//
//  NetrworkManager.swift
//  HomeAssignment
//
//  Created by yael bilu eran on 16/01/2023.
//

import Foundation

class NetrworkManager: NSObject {
    static let shared = NetrworkManager()
    
    func parseMockData(filename fileName: String) -> [Operation]? {
        if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode(Operations.self, from: data)
                return jsonData.operations
            } catch {
                print("error: \(error)")
            }
        }
        return nil
    }
}
