//
//  ReviewsTableViewController.swift
//  BoardGamesShop
//
//  Created by Anastasiia Korshina on 31.03.2022.
//

import UIKit

class ReviewsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem?.isEnabled = true
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 0
    }

    

}
