//
//  TabBarController.swift
//  BoardGamesShop
//
//  Created by Anastasiia Korshina on 31.03.2022.
//

import UIKit

class TabBarController: UITabBarController {
    
    var product: Product!
    
    override func viewDidLoad() {
        navigationItem.rightBarButtonItem?.isEnabled = false
    }
 
}
