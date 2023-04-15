//
//  ViewController.swift
//  swift6_user_defaults
//
//  Created by Tarkan Kara on 13.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var noteText: UITextField!
    @IBOutlet weak var dateText: UITextField!
    
    @IBOutlet weak var noteLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nott = UserDefaults.standard.object(forKey: "not")
        let datee = UserDefaults.standard.object(forKey: "date")
        
        if let registerNot = nott as? String {
            noteLabel.text = "Yapılacak iş : \(registerNot)"
        }
        
        if let registerDate = datee as? String {
            dateLabel.text = "Yapılacak Zaman : \(registerDate)"
        }
            
        
    }

    @IBAction func registerBtn(_ sender: Any) {
        
        if noteText.text == "" || dateText.text == "" {
            noteText.placeholder = "Zorunlu Alan"
            dateText.placeholder = "Zorunlu Alan"
            
        }else {
            UserDefaults.standard.set(noteText.text, forKey: "not")
            UserDefaults.standard.set(dateText.text, forKey: "date")
            
            noteLabel.text = "Yapılacak iş : \(noteText.text!)"
            dateLabel.text = "Yapılacak Zaman : \(dateText.text!)"
        }
        
    }
    
    @IBAction func deleteBtn(_ sender: Any) {
        
        //Önce kayıtlı bir şey varmı diye kontrol edilmeli
        //Veya daha önce silinmiş mi diye kontrol edilmeli bidaha silme işlemleri uğraşılmamalı
        
        let nott = UserDefaults.standard.object(forKey: "not")
        let datee = UserDefaults.standard.object(forKey: "date")
        
        if (nott as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "not")
            noteLabel.text = "Yapılacak iş :"
        }
        if (datee as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "date")
            dateLabel.text = "Yapılacak Zaman :"
        }
        
        
    }
    
}

