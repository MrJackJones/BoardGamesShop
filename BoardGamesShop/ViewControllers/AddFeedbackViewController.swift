//
//  AddFeedbackViewController.swift
//  BoardGamesShop
//
//  Created by Konstantin Korchak on 31.03.2022.
//

import UIKit

class AddFeedbackViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var feedbackTextField: UITextField!
    
    var feedback: [Feedback]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.delegate = self
        feedbackTextField.delegate = self
    }
    
    @IBAction func cancelButtonPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        checkAndGo()
    }
}

// MARK: - Private func
extension AddFeedbackViewController {
    private func showAlertMessage() {
        let alert = UIAlertController(
            title: "Ошибка",
            message: "Заполните все поля",
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    private func checkAndGo() {
        if nameTextField.text == "" || feedbackTextField.text == "" {
            showAlertMessage()
        } else {
            feedback.append(Feedback(
                authorName: nameTextField.text ?? "",
                text: feedbackTextField.text ?? "")
            )
            performSegue(withIdentifier: "returnToFeedbacks", sender: nil)
        }
    }
}
// MARK: - Keyboard setup
extension AddFeedbackViewController {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == nameTextField {
            feedbackTextField.becomeFirstResponder()
        } else {
            checkAndGo()
        }
        return true
    }
}
