//
//  DetailsViewController.swift
//  BoardGamesShop
//
//  Created by Ivan on 31.03.2022.
//

import UIKit

class DetailsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


    @IBOutlet var imageView: UIImageView!
    @IBOutlet var addToCartButton: UIButton!
    @IBOutlet var equipmensTV: UITableView!
    @IBOutlet var heightConstant: NSLayoutConstraint!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var playerCountLabel: UILabel!
    @IBOutlet var gameTimeLabel: UILabel!
    @IBOutlet var playerAgeLabel: UILabel!
    @IBOutlet var yearLabel: UILabel!
    @IBOutlet var manufacturerLabel: UILabel!
    
    var product: Product!
    var cart: Сart!
    
    let cellReuseIdentifier = "productEquipmensCell"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = product.name
        imageView.image = UIImage(named: product.image)
        descriptionLabel.text = product.description
        playerCountLabel.text = product.playerCount
        gameTimeLabel.text = "\(product.roundTime)"
        playerAgeLabel.text = "\(product.playerAge)+"
        addToCartButton.setTitle("\(product.price)", for: .normal)
        addToCartButton.setImage(UIImage(systemName: "cart"), for: .normal)
        yearLabel.text = "\(product.releaseYear)"
        manufacturerLabel.text = product.manufacturer.rawValue
        
        
        equipmensTV.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
        equipmensTV.delegate = self
        equipmensTV.dataSource = self
        equipmensTV.allowsSelection = false
        equipmensTV.separatorStyle = .none
        equipmensTV.isScrollEnabled = false

        heightConstant.constant = CGFloat(product.equipmens.count*50)
    }
    
    @IBAction func addToCartAction() {
        cart.product.append(product)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        product.equipmens.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "productEquipmensCell", for: indexPath)
        let product = product.equipmens[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.image = UIImage(systemName: "plus")
        content.text = product.name
        cell.contentConfiguration = content
        
        return cell
    }
    
}
