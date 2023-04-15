//
//  ViewController.swift
//  swift2_code_constraint
//
//  Created by Tarkan Kara on 13.04.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let myButton = UIButton()
        myButton.setTitle("Kaydet", for: UIControl.State.normal)
        myButton.setTitleColor(UIColor.blue, for: UIControl.State.normal)
        myButton.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        view.addSubview(myButton)
        
        //self : kendi sınıfına referans eder
        
        myButton.addTarget(self, action: #selector(myFunc), for: UIControl.Event.touchUpInside)
//        let myButton2 = UIButton()
//        myButton2.setTitle("Kaydet2", for: UIControl.State.application)
//        myButton2.setTitleColor(UIColor.blue, for: UIControl.State.application)
//        myButton2.frame = CGRect(x: 100, y: 150, width: 100, height: 100)
//        view.addSubview(myButton2)
        
    }
    
     @IBAction func myFunc () {
        print("Butona Tıklandı")
    }


}

