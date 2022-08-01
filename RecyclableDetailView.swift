//
//  File.swift
//  find-E
//
//  Created by HARISH RAM BAGHAVATH stu on 26/7/22.
//

import Foundation
import SwiftUI

struct RecyclableDetailView: View {
    let recyclable: Recyclable
    var body: some View {
        ScrollView {
            Image(recyclable.imgName)
                .resizable()
                .scaledToFit()
                .padding()
            Text(recyclable.description)
                .padding()
            Spacer()
        }.navigationTitle(recyclable.name)
        
    }
}
