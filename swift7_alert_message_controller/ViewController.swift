//
//  ViewController.swift
//  swift7_alert_message_controller
//
//  Created by Tarkan Kara on 13.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var password2TextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func signUpBtn(_ sender: Any) {
        
        if emailTextField.text == "" {
            //Email Boş girilemez
            self.customAlertDialog(title: "EMAİL HATA!", message: "Email Girirniz!")
        } else if passwordTextField.text == "" {
            //password alanı boş girilemez
            self.customAlertDialog(title: "PASSWORD HATA", message: "Parola Giriniz!")
        } else if passwordTextField.text != password2TextField.text {
            // parolalar uyuşmuyor
            self.customAlertDialog(title: "PASSWORD HATA", message: "Parolar Uyuşmuyor")
        } else {
            //Giriş Başaralı
            self.customAlertDialog(title: "SUCCESS", message: "Giriş Başarılı")
        }
        
    }
    
    func customAlertDialog(title : String, message : String){
        let alertBtn = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {
            (UIAlertAction) in
            //OK button'una tiklanınca olacaklar.
            print("ok button tıklandı")
        }
        alertBtn.addAction(okButton)
        self.present(alertBtn, animated: true, completion: nil)
    }
}

