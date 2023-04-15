//
//  SecondViewController.swift
//  swift3_segue
//
//  Created by Tarkan Kara on 13.04.2023.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var secondLabelInfo: UILabel!
    
    var secondTextLabel = ""
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        secondLabelInfo.text = secondTextLabel
    }
    

   

}
