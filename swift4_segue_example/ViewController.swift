//
//  ViewController.swift
//  swift4_segue_example
//
//  Created by Tarkan Kara on 15.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputTextt: UITextField!
    
    var gonderilenText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func gonderBtn(_ sender: Any) {
        gonderilenText = inputTextt.text!
        
        if gonderilenText == "" {
            inputTextt.placeholder = "Boş Değer Girilimez"
        } else {
            performSegue(withIdentifier: "toSecondVC", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            let destination = segue.destination as! ViewController2
            destination.gelenVeri = "Veri : \(gonderilenText)"
        }
    }
    
}

