//
//  LoginFormControllerViewController.swift
//  UI_GB_Тивиков_Антон
//
//  Created by Антон Тивиков on 03.11.2021.
//

import UIKit

class LoginFormControllerViewController: UIViewController {
    @IBOutlet weak var LoginTF: UITextField!
    @IBOutlet weak var Eye: UIButton!
    @IBOutlet weak var PasswTF: UITextField!
    
    @IBOutlet weak var ScrollView: UIScrollView!
    
    @IBAction func EnterButton(_ sender: UIButton) {
        if LoginTF.text == "Login" && PasswTF.text == "12345"{
        }else{
            let alert = UIAlertController(title: "Ошибка", message: "Введены неверные данные ", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
        }
    }
    
    
    @IBAction func EyeButton(_ sender: UIButton) {
        if PasswTF.isSecureTextEntry {
            PasswTF.isSecureTextEntry = false
            Eye.setImage(UIImage(systemName: "eye.slash"), for: .normal)
        }else{
            PasswTF.isSecureTextEntry = true
            Eye.setImage(UIImage(systemName: "eye"), for: .normal)
        }
        
    }
    
    
    
    @objc func keyboardWasShown(notification: Notification) {
            // Получаем размер клавиатуры
    let info = notification.userInfo! as NSDictionary
    let kbSize = (info.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as! NSValue).cgRectValue.size
    let contentInsets = UIEdgeInsets(top: 0.0, left: 0.0, bottom: kbSize.height, right: 0.0)
            // Добавляем отступ внизу UIScrollView, равный размеру клавиатуры
    self.ScrollView?.contentInset = contentInsets
    ScrollView?.scrollIndicatorInsets = contentInsets }
        //Когда клавиатура исчезает
    @objc func keyboardWillBeHidden(notification: Notification) {
        let contentInsets = UIEdgeInsets.zero
        ScrollView?.contentInset = contentInsets
    }
    
    
    @objc func hideKeyboard() {
        self.ScrollView?.endEditing(true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    

    

}
