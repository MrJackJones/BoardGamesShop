//
//  MainTableViewController.swift
//  BoardGamesShop
//
//  Created by Ivan on 30.03.2022.
//

import UIKit

protocol MainTableViewControllerDelegate {
    func updateFeedback(_ product: Product)
    func updateCart(_ cartWhithProduct: [Product])
}

class MainTableViewController: UITableViewController, UISearchBarDelegate {
    
    @IBOutlet var cartButton: UIBarButtonItem!
    @IBOutlet var searchBar: UISearchBar!
    
    
    var sharedData = DataManager.shared
    var filteredData: [DataBase]!
    var cart: [Product] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        tableView.separatorStyle = .none
        cartButton.isEnabled = cart.isEmpty ? false : true
        filteredData = sharedData
    }
    
    override func viewWillAppear(_ animated: Bool) {
        cartButton.isEnabled = cart.isEmpty ? false : true
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        filteredData.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        filteredData[section].name.rawValue
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        filteredData[section].products.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        80
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "productCell", for: indexPath)
        let product = filteredData[indexPath.section].products[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.image = UIImage(named: product.image)
        content.text = product.name
        cell.contentConfiguration = content
        cell.selectionStyle = .none
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let cartVC = segue.destination as? CartTableViewController {
            cartVC.cart = cart
            cartVC.delegate = self
        }else {
            guard let tabBarController = segue.destination as? UITabBarController else { return }
            guard let indexPath = tableView.indexPathForSelectedRow else { return }
            for viewController in tabBarController.viewControllers! {
                if let detailsVC = viewController as? DetailsViewController {
                    detailsVC.product = getProductAfterSearch(indexPath)
                    detailsVC.cart = cart
                    detailsVC.delegate = self
                } else if let feedbackVC = viewController as? FeedbackViewController {
                    feedbackVC.product = getProductAfterSearch(indexPath)
                    feedbackVC.delegate = self
                }
            }
        }
    }
    
    @IBAction func unwindToMainViewController(segue: UIStoryboardSegue) {
        cart = []
    }
    
    private func getProductAfterSearch(_ indexPath: IndexPath) -> Product {
        let nameOfCategoty = filteredData[indexPath.section].name
        let productOfCategoty = filteredData[indexPath.section].products[indexPath.row]
        guard let indexOfCategory = sharedData.firstIndex(where: {$0.name == nameOfCategoty}) else { return sharedData[0].products[0] }
        guard let indexOfProduct = sharedData[indexOfCategory].products.firstIndex(where: {$0 == productOfCategoty  }) else { return  sharedData[0].products[0] }
        return sharedData[indexOfCategory].products[indexOfProduct]
    }
    
}

extension MainTableViewController: MainTableViewControllerDelegate {
    func updateFeedback(_ product: Product) {
        guard let indexOfCategory = sharedData.firstIndex(where: {$0.name == product.category}) else {return}
        guard let indexOfProduct = sharedData[indexOfCategory].products.firstIndex(where: {$0 == product }) else {return}
        sharedData[indexOfCategory].products[indexOfProduct].feedbacks = product.feedbacks
    }
    
    func updateCart(_ cartWhithProduct: [Product]) {
        cart = cartWhithProduct
    }
}
// MARK: - Search Bar Config
extension MainTableViewController {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filteredData = []
        
        if searchText == "" {
            filteredData = sharedData
        } else {
            for data in sharedData {
                var productsArray: [Product] = []
                for product in data.products {
                    if product.name.lowercased().contains(searchText.lowercased()) {
                        productsArray.append(product)
                    }
                }
                if !productsArray.isEmpty {
                    filteredData.append(DataBase(name: data.name, products: productsArray))
                }
            }
        }
        self.tableView.reloadData()
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        self.searchBar.endEditing(true)
    }
}

