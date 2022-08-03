//
//  File.swift
//  find-E
//
//  Created by HARISH RAM BAGHAVATH stu on 26/7/22.
//

import Foundation
import SwiftUI


struct RecyclingLocation: Codable {
    var type: String
}

class GetData: ObservableObject {
    @Published var recyclingLocations: [RecyclingLocation]?
    
    init() {
        loadData()
    }
    
    func loadData() {
        let req = URLRequest(url: URL(string: "https://raw.githubusercontent.com/harish-f/find-E/main/Resources/e-waste-recycling-locations.json")!)
        
        URLSession.shared.dataTask(with: req) { data, request, error in
            if let data = data {
                let decoder = JSONDecoder()
                DispatchQueue.main.async {
                    try? self.recyclingLocations = decoder.decode([RecyclingLocation].self, from: data)
                }
                
            }
        }.resume()
    }
}


