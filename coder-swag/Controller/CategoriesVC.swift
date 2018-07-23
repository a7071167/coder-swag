//
//  ViewController.swift
//  coder-swag
//
//  Created by user on 21.07.2018.
//  Copyright © 2018 user. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var categoryTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.delegate = self
        categoryTable.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell", for: indexPath) as? CategoryCell {
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: category)
            return cell
        } else  {
            return CategoryCell()
        }
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return view.frame.size.height / 4
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "ProductsVC", sender: category)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productVC = segue.destination as? ProductsVC {
            let barButton = UIBarButtonItem()
            barButton.title = ""
            navigationItem.backBarButtonItem = barButton
            assert(sender as? Category != nil)
            productVC.initProducts(category: sender as! Category)
        }
    }
}

