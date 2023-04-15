//
//  ViewController2.swift
//  swift10_table_view
//
//  Created by Tarkan Kara on 15.04.2023.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var imageVieww: UIImageView!
    
    var selectedNameController = ""
    var selectedImageController = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        labelText.text = selectedNameController
        imageVieww.image = UIImage(named: selectedImageController)
    }
    

    

}
