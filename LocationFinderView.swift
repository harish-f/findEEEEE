//
//  File.swift
//  find-E
//
//  Created by HARISH RAM BAGHAVATH stu on 26/7/22.
//

import Foundation
import SwiftUI


struct LocationFinderView: View {
    @ObservedObject var recycleLocations = GetData()
    @State var shownRecyclables: [Int] = [0]
    
    var body: some View {
        NavigationView {
            VStack {
                if let data = recycleLocations.recyclingLocations {
                    Text("data??")
                } else {
                    Text("No data")
                }
            }
            .navigationTitle("Find a bin")
            .onAppear {
                recycleLocations.loadData()
            }
        }
    }
}
