//
//  File.swift
//  find-E
//
//  Created by HARISH RAM BAGHAVATH stu on 26/7/22.
//

import Foundation
import SwiftUI

struct CheckRecycleView: View {
    let recyclables: [Recyclable] = [
        Recyclable(name: "yes", description: "deshfjkajd", imgName: "test", isRecyclable: true),
        Recyclable(name: "yes", description: "deshfjkajd", imgName: "test", isRecyclable: true),
        Recyclable(name: "yes", description: "deshfjkajd", imgName: "test", isRecyclable: true),
        Recyclable(name: "yes", description: "deshfjkajd", imgName: "test", isRecyclable: true),
        Recyclable(name: "yes", description: "deshfjkajd", imgName: "test", isRecyclable: true),
        Recyclable(name: "yes", description: "deshfjkajd", imgName: "test", isRecyclable: true),
        Recyclable(name: "yes", description: "deshfjkajd", imgName: "test", isRecyclable: true),
        Recyclable(name: "no", description: "deshfjkajd", imgName: "test", isRecyclable: false),
        Recyclable(name: "no", description: "deshfjkajd", imgName: "test", isRecyclable: false),
        Recyclable(name: "no", description: "deshfjkajd", imgName: "test", isRecyclable: false),
        Recyclable(name: "no", description: "deshfjkajd", imgName: "test", isRecyclable: false),
        Recyclable(name: "test1", description: "deshfjkajd", imgName: "test", isRecyclable: false),
        Recyclable(name: "test1", description: "deshfjkajd", imgName: "test", isRecyclable: false),
        Recyclable(name: "test1", description: "deshfjkajd", imgName: "test", isRecyclable: false),
        Recyclable(name: "test1", description: "deshfjkajd", imgName: "test", isRecyclable: false),
        
    ]
    @State var searchText = ""
    
    var filteredResults: [Recyclable] {
        if searchText == "" {
            return recyclables
        } else {
            return recyclables.filter {
                $0.name.lowercased().contains(searchText.lowercased())
            }
        }
    }
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    Section(header: Text("Recyclables")) {
                        ForEach(filteredResults.filter{$0.isRecyclable}) {recyclable in
                            NavigationLink(destination: RecyclableDetailView(recyclable: recyclable)) {
                                Image(systemName: "checkmark.circle.fill").foregroundColor(.green)
                                Text(recyclable.name)
                            }
                        }
                    }
                    Section(header: Text("Not recyclable")) {
                        ForEach(filteredResults.filter{!$0.isRecyclable}) {recyclable in
                            NavigationLink(destination: RecyclableDetailView(recyclable: recyclable)) {
                                Image(systemName: "multiply.circle.fill").foregroundColor(.red)
                                Text(recyclable.name)
                            }
                        }
                    }
                    
                }
                .searchable(text: $searchText)
            }.navigationTitle("Check your recyclables")
        }.navigationViewStyle(.stack)
    }
}
