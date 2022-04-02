//
//  FeedbackViewController.swift
//  BoardGamesShop
//
//  Created by Konstantin Korchak on 31.03.2022.
//

import UIKit

class FeedbackViewController: UITableViewController {
    
    var product: Product!
    //Для приема экземпляра модели Product

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 55
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        getTitle()
        let addButton = UIBarButtonItem(
            barButtonSystemItem: .add,
            target: self,
            action: #selector(addButtonPressed)
        )
        tabBarController?.navigationItem.rightBarButtonItems = [addButton]
        // нужно добавить в методы viewWillAppear остальных вью внутри таббар контроллера строку:
        // tabBarController?.navigationItem.rightBarButtonItems = []
    }
    
    @objc private func addButtonPressed() {
        performSegue(withIdentifier: "addFeed", sender: nil)
    }
    
    private func getTitle() {
        let title = product.feedbacks.count == 0 ? "Отзывов еще нет" : "Отзывы"
        tabBarController?.navigationItem.title = title
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        product.feedbacks.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "feedbacks", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let feedback = product.feedbacks[indexPath.row]
        content.image = UIImage(systemName: "person.circle.fill")
        content.text = feedback.authorName
        content.secondaryText = feedback.text
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let addFeedbackVC = segue.destination as? AddFeedbackViewController else { return }
        addFeedbackVC.feedback = product.feedbacks
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let feedbackVC = segue.source as? AddFeedbackViewController else { return }
        product.feedbacks = feedbackVC.feedback
        tableView.reloadData()
        getTitle()
    }
}
