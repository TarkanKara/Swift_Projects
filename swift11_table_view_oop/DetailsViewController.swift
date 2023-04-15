//
//  DetailsViewController.swift
//  swift11_table_view_oop
//
//  Created by Tarkan Kara on 15.04.2023.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var labelTextArea: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelTextDescription: UILabel!
    
    var countrySelected : CountryModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        labelTextArea.text = countrySelected?.area
        imageView.image = UIImage(named: countrySelected!.image)
        labelTextDescription.text = countrySelected?.description
        
    }
    

}
