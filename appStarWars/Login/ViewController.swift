//
//  ViewController.swift
//  appStarWars
//
//  Created by luis hector hernandez godinez  on 26/06/23.
//

import UIKit
import IQKeyboardManagerSwift

class ViewController: UIViewController{

    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var nameTexfield: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    var nameUserInfo: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        nameTexfield.delegate = self
        passwordTextField.delegate = self
        nextButton.layer.borderColor = UIColor.red.cgColor
        nextButton.layer.borderWidth = 2.0
        nextButton.isEnabled =  false
    }

    @IBAction func nextButton(_ sender: Any) {
        let vc = MenuViewController()
        vc.userName = nameUserInfo
        navigationController?.pushViewController(vc, animated: true)

    }
}

extension ViewController: UITextFieldDelegate {


    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {

        if textField == passwordTextField {
            let numbersRegex = "^[0-9]*$"
            let predicate = NSPredicate(format:"SELF MATCHES %@", numbersRegex)
            let newString = (textField.text as NSString?)?.replacingCharacters(in: range, with: string) ?? ""
            let isNumber = predicate.evaluate(with: newString)
            return isNumber
        } else if textField == nameTexfield {
            let lettersRegex = "^[a-zA-Z]*$"
            let predicate = NSPredicate(format:"SELF MATCHES %@", lettersRegex)
            let newString = (textField.text as NSString?)?.replacingCharacters(in: range, with: string) ?? ""
            let isLetter = predicate.evaluate(with: newString)
            return isLetter
        }

        return true
    }


    func textFieldDidEndEditing(_ textField: UITextField) {

        if let text = nameTexfield.text {
            nameUserInfo = text
        }
        let nameUserInfo = nameUserInfo
        let text2 = passwordTextField.text ?? ""

        if !nameUserInfo.isEmpty && !text2.isEmpty {

            nextButton.isEnabled = true
        } else {

            nextButton.isEnabled = false
        }
    }
}
