//
//  ViewController.swift
//  swift3_segue
//
//  Created by Tarkan Kara on 13.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    
    @IBOutlet weak var textOne: UITextField!
    @IBOutlet weak var textTwo: UITextField!
    
    
    var names = ""
    var surnames = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func loginBtn(_ sender: Any) {
        
        names = textOne.text!
        surnames = textTwo.text!
        
        if names == "Tarkan" || surnames == "Kara" {
            //Ekranlar arası geçiş, birden fazla ekran arası geçiş olduğunda withIdentifier kullanırız.
            performSegue(withIdentifier: "toSecondVC", sender: nil)
        }else {
            if names == "" || surnames == "" {
                firstLabel.text = "Alanlar Boş Geçilmez"
            }else {
                firstLabel.text = "Lütfen Doğru Bilgileri giriniz!"
            }
        }
       
        
    }
    
    //İkinici Ekranı bizler için hazırlama
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            
            let seqDestination = segue.destination as! SecondViewController
            seqDestination.secondTextLabel = names + surnames
            
            
        }
        
    }
    

}

