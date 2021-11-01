//
//  ViewController.swift
//  UI_1l_Тивиков_Антон
//
//  Created by Антон Тивиков on 27.10.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var LoginTF: UITextField!
    
    @IBOutlet weak var PasswTF: UITextField!
    
    @IBAction func Eye_Button(_ sender: UIButton) {
        if PasswTF.isSecureTextEntry == true{
            PasswTF.isSecureTextEntry = false
        }else{
            PasswTF.isSecureTextEntry = true
        }
    }
    
    @IBAction func Enter_Button(_ sender: UIButton) {
        
        
        if LoginTF.text == "Test" && PasswTF.text == "12345"{
            
        }else{
            
                        let alert = UIAlertController(title: "Ошибка", message: "Введены неверные Логин / Пароль", preferredStyle: .alert)
                        
                        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                        
                        alert.addAction(action)
                        
                        present(alert, animated: true, completion: nil)
                        
                        
        }
    }
}

