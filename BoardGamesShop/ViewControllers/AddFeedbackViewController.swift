//
//  AddFeedbackViewController.swift
//  BoardGamesShop
//
//  Created by Konstantin Korchak on 31.03.2022.
//

import UIKit

class AddFeedbackViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate {
    
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var feedbackTextView: UITextView!
    
    
    var feedback: [Feedback]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.delegate = self
        feedbackTextView.delegate = self
//        feedbackTextView.delegate = self
        
        feedbackTextView.layer.cornerRadius = 5
        feedbackTextView.layer.borderColor = UIColor
            .gray.withAlphaComponent(0.3).cgColor
        feedbackTextView.layer.borderWidth = 0.5
        feedbackTextView.clipsToBounds = true
        feedbackTextView.text = "Напишите свой отзыв"
        feedbackTextView.textColor = UIColor.lightGray
    }
    
    @IBAction func cancelButtonPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        checkAndGo()
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if feedbackTextView.textColor == UIColor.lightGray {
            feedbackTextView.text = nil
            feedbackTextView.textColor = UIColor.black
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if feedbackTextView.text.isEmpty {
            feedbackTextView.text = "Напишите свой отзыв"
            feedbackTextView.textColor = UIColor.lightGray
        }
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
        if nameTextField.text == "" || feedbackTextView.text == "" {
            showAlertMessage()
        } else {
            feedback.append(Feedback(
                authorName: nameTextField.text ?? "",
                text: feedbackTextView.text ?? "")
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
        feedbackTextView.becomeFirstResponder()
        return true
    }
}
