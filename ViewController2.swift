//
//  ViewController2.swift
//  swift4_segue_example
//
//  Created by Tarkan Kara on 15.04.2023.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var gelenText: UILabel!
    
    var gelenVeri = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        gelenText.text = gelenVeri
    }
    

   
}
