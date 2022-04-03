//
//  CartTableViewController.swift
//  BoardGamesShop
//
//  Created by Anastasiia Korshina on 31.03.2022.
//

import UIKit

class CartTableViewController: UITableViewController {
    
    var cart: Сart!
    var delegate: MainTableViewControllerDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.separatorStyle = .none
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return cart.product.count
        default:
            return 1
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 80
        default:
            return 120
        }
    }
    
    override func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String? {
        "Удалить товар?"
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Ваши товары"
        default:
            return "Действия"
        }
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        switch indexPath.section {
        case 0:
            if editingStyle == .delete {
                cart.product.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade)
                delegate.updateCart(cart)
            }
        default:
            return
        }
        
    }
    
    public override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle
    {
        if indexPath.section == 1 {
            return UITableViewCell.EditingStyle.none
        } else {
            return UITableViewCell.EditingStyle.delete
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "productCell", for: indexPath)
            let product = cart.product[indexPath.row]
            
            var content = cell.defaultContentConfiguration()
            content.image = UIImage(named: product.image)
            content.text = product.name
            cell.contentConfiguration = content
            
            return cell
            
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "actionCell", for: indexPath)
            cell.selectionStyle = .none
            return cell
        }
    }
    
    
    @IBAction func checkoutAction() {
        performSegue(withIdentifier: "checkout", sender: nil)
    }
}
