//
//  DataService.swift
//  coder-swag
//
//  Created by user on 21.07.2018.
//  Copyright © 2018 user. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]

    func getCategories() -> [Category] {
        return categories
    }
}
