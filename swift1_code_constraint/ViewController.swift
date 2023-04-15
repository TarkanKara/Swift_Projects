//
//  ViewController.swift
//  swift1_code_constraint
//
//  Created by Tarkan Kara on 13.04.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let myLabelOne = UILabel()
        myLabelOne.text = "First Label"
        myLabelOne.textAlignment = NSTextAlignment.center
        myLabelOne.frame = CGRect(x: 20, y: 100, width: 150, height: 100)
        view.addSubview(myLabelOne)
        
        let myLabelTwo = UILabel()
        myLabelTwo.text = "Second Label"
        myLabelTwo.textAlignment = .center
        myLabelTwo.frame = CGRect(x: 20, y: 150, width: 150, height: 100)
        view.addSubview(myLabelTwo)
        
        let widht = view.frame.size.width           //Ekran width
        let height = view.frame.size.height         // Ekran height
        
        let myLabelTree = UILabel()
        myLabelTree.text = "Tree Label"
        myLabelTree.textAlignment = .center
        myLabelTree.frame = CGRect(x: widht * 0.1, y: height * 0.3, width: 100, height: 100)
        view.addSubview(myLabelTree)
        
        let myLabelFour = UILabel()
        myLabelFour.text = "Four Label"
        myLabelFour.textAlignment = .center
        myLabelFour.frame = CGRect(x: widht * 0.5 - 50, y: height * 0.5 - 50, width: 100, height: 100)
        view.addSubview(myLabelFour)
        
        let myLabelFive = UILabel()
        myLabelFive.text = "Five Label"
        myLabelFive.textAlignment = .center
        myLabelFive.frame = CGRect(x: widht * 0.5 - widht * 0.8 / 2, y: height * 0.5 - 50, width: 100, height: 100)
        view.addSubview(myLabelFive)
    }


}

