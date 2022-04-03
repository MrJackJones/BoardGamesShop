//
//  MainTableViewController.swift
//  BoardGamesShop
//
//  Created by Ivan on 30.03.2022.
//

import UIKit

protocol MainTableViewControllerDelegate {
    func updateFeedback(_ product: Product)
    func updateCart(_ cartWhithProduct: Сart)
}

class MainTableViewController: UITableViewController {
    var sharedData = DataManager.shared
    var cart = Сart()

    override func numberOfSections(in tableView: UITableView) -> Int {
        sharedData.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        sharedData[section].name.rawValue
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        sharedData[section].products.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        80
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "productCell", for: indexPath)
        let product = sharedData[indexPath.section].products[indexPath.row]
        
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
                   detailsVC.product = sharedData[indexPath.section].products[indexPath.row]
                   detailsVC.cart = cart
                   detailsVC.delegate = self
               } else if let feedbackVC = viewController as? FeedbackViewController {
                   feedbackVC.product = sharedData[indexPath.section].products[indexPath.row]
                   feedbackVC.delegate = self
               }
           }
        }

    }
}

extension MainTableViewController: MainTableViewControllerDelegate {
    func updateFeedback(_ product: Product) {
        guard let indexOfCategory = sharedData.firstIndex(where: {$0.name == product.category}) else {return}
        guard let indexOfProduct = sharedData[indexOfCategory].products.firstIndex(where: {$0 == product }) else {return}
        sharedData[indexOfCategory].products[indexOfProduct].feedbacks = product.feedbacks
    }
    
    func updateCart(_ cartWhithProduct: Сart) {
        cart = cartWhithProduct
    }
}
