//
//  CategoryCell.swift
//  coder-swag
//
//  Created by user on 21.07.2018.
//  Copyright © 2018 user. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!

    func updateViews(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }
}
