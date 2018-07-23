//
//  Category.swift
//  coder-swag
//
//  Created by user on 21.07.2018.
//  Copyright © 2018 user. All rights reserved.
//

import Foundation

struct Category {
    private(set) var title: String
    private(set) var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
