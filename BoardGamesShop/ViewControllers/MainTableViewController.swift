//
//  MainTableViewController.swift
//  BoardGamesShop
//
//  Created by Ivan on 30.03.2022.
//

import UIKit

class MainTableViewController: UITableViewController {
    let categorys = DataManager.shared
    let cart = Сart()

    override func numberOfSections(in tableView: UITableView) -> Int {
        categorys.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        categorys[section].name
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        categorys[section].products.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        80
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "productCell", for: indexPath)
        let product = categorys[indexPath.section].products[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.image = UIImage(named: product.image)
        content.text = product.name
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let cartVC = segue.destination as? CartTableViewController {
            cartVC.cart = cart
        }else {
            guard let tabBarController = segue.destination as? UITabBarController else { return }
            guard let indexPath = tableView.indexPathForSelectedRow else { return }
            for viewController in tabBarController.viewControllers! {
               if let detailsVC = viewController as? DetailsViewController {
                   detailsVC.product = categorys[indexPath.section].products[indexPath.row]
                   detailsVC.cart = cart
               } else if let feedbackVC = viewController as? FeedbackViewController {
                   feedbackVC.product = categorys[indexPath.section].products[indexPath.row]
               }
           }
        }

    }
}
