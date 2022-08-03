//
//  File.swift
//  find-E
//
//  Created by HARISH RAM BAGHAVATH stu on 26/7/22.
//

import Foundation
import SwiftUI


struct LocationFinderView: View {
    @StateObject var recycleLocation = GetData()
    
    var body: some View {
        NavigationView {
            VStack {
                Text("\(recycleLocation.recyclingLocations?.count ?? 69)")
            }
            
            .navigationTitle("Find a bin")
        }
    }
}
