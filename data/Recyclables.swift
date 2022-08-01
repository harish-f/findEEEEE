//
//  File.swift
//  
//
//  Created by HARISH RAM BAGHAVATH stu on 26/7/22.
//

import Foundation

struct Recyclable: Identifiable {
    var name: String
    var description: String
    var imgName: String
    
    var isRecyclable: Bool
    
    var id = UUID()
}

