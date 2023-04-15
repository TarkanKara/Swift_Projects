//
//  ViewController.swift
//  swift9_scheduling_timers
//
//  Created by Tarkan Kara on 14.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    
    var timer = Timer()
    var remamingTimer = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        remamingTimer = 15
        counterLabel.text = "Sayaç : \(remamingTimer)"
        
    }

    @IBAction func counterStartBtn(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(changeTimer), userInfo: nil, repeats: true)
    }
    
    
    @objc func changeTimer(){
        counterLabel.text = "Sayaç : \(remamingTimer)"
        remamingTimer -= 1
        if remamingTimer == 0 {
            counterLabel.text = "Süre Bitti"
            timer.invalidate()                  //timer bitirme
            remamingTimer = 15
        }
    }
    
}

