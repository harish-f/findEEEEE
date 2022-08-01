//
//  File.swift
//  find-E
//
//  Created by HARISH RAM BAGHAVATH stu on 26/7/22.
//

import Foundation

struct RecyclingLocation: Decodable, Identifiable {
    var id = UUID()
    var type: String
    var properties: String
    var geometry: String
    
}

class GetData: ObservableObject {
    @Published var recyclingLocations:[RecyclingLocation]!
    
    init() {
        loadData()
    }
    
    func loadData() {
        guard let url = Bundle.main.url(forResource: "e-waste-recycling-locations", withExtension: "json")
        else {
            print("Decoding file not found")
            return
        }
        let data = try? Data(contentsOf: url)
        if let recyclingLocations = try? JSONDecoder().decode([RecyclingLocation].self, from: data!) {
            self.recyclingLocations = recyclingLocations
            print("hkjewbsfiefosjbknaifohnjl")
        }
    }
}


