//
//  Product.swift
//  coder-swag
//
//  Created by user on 23.07.2018.
//  Copyright © 2018 user. All rights reserved.
//

import Foundation

struct Product {
    private(set) public var title: String
    private(set) public var price: String
    private(set) public var imageName: String
    
    init(title: String, price: String, imageName: String) {
        self.imageName = imageName
        self.price = price
        self.title = title
    }
}
