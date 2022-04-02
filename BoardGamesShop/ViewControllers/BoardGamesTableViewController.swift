//
//  BoardGamesTableViewController.swift
//  BoardGamesShop
//
//  Created by Anastasiia Korshina on 30.03.2022.
//

import UIKit

class BoardGamesTableViewController: UITableViewController {
    
    let categories = DataManager.shared.getCategories()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return categories.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        categories[section].categoryName
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories[section].games.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "boardGameCell", for: indexPath)
        
        let game = categories[indexPath.section].games[indexPath.row]
        
        var context = cell.defaultContentConfiguration()
        context.image = UIImage(named: game.image)
        context.text = game.name
        
        cell.contentConfiguration = context
        
        return cell
    }

    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? TabBarController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        tabBarController.product = categories[indexPath.section].games[indexPath.row]
    }

}
