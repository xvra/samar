//
//  Category.swift
//  Pendasi
//
//  Created by Adinda Dwi on 10/06/23.
//

import SwiftUI

// Model and Sample Data....

struct Category: Identifiable {
    
    
    var id: String = UUID().uuidString
    var title: String
}

var categories = [
    
    Category(title: "Telur"),
    Category(title: "Susu Sapi"),
    Category(title: "Cumi-Cumi"),
    Category(title: "Kacang"),
    Category(title: "Udang"),
    Category(title: "Kedelai"),
    
]
