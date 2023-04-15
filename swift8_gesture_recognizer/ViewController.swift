//
//  ViewController.swift
//  swift8_gesture_recognizer
//
//  Created by Tarkan Kara on 14.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var labelText: UILabel!
    
    var isChange = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    // GestureRecognizer sınıfıyla birlikte kullanıcının ekranda gerçekleştirdiği parmak hareketlerini kolayca algılamanız ve bunlara hızlıca tepki vermeniz için hazırlanmıştır.
        
    // UILongPressGestureRecognizer: Ekrana uzun süre basma hareketlerini algılayan sınıftır.
    // UIPanGestureRecognizer: Parmakla yapılan taşıma hareketlerini takip eden sınıftır.
    // UIPinchGestureRecognizer : Ekranda iki parmakla yapılan ve genelde büyütme / küçültme amaçlı kullanılan hareketleri takip eden sınıftır.
    // UIRotatitionGestureRecognizer: Ekrandaki döndürme amaçlı parmak hareketlerini algılayan sınıftır.
    // UISwipeGestureRecognizer : Parmakla yapılan sayfa değiştirmeye benzer hareketleri takip eden sınıftır.
    // UITapGestureRecognizer: Ekrana yapılan dokunmaları takip eden bir sınıftır.
        
    // Ap açıldığı gibi oluşturacağımız jest algılayıcının görsele atanma işlemleri yapmamız lazım.
    // görsele tıklanıp tıklanmadığını bilmemiz lazım ve bu işlemin hemen ap açılırken yapılmasını isteriz. Oyüzden viewdidLoad() metodu içerisinde yaparız.
    // Görsele tıklandığında görselin değişme durumunu ayrı bir metotta yaparız.
        
        // tıklanabilirlik özelliği eklendi.
        imageView.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePicture))
        
        // Ekrana yapılan dokunmaları takip eden metoddur.
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    
    
    @objc func changePicture(){
        //var isChange = false
        
        if isChange == false {
            imageView.image = UIImage(named: "newyork")
            labelText.text = "NEW YORK"
            isChange = true
        }else {
            imageView.image = UIImage(named: "turkey")
            labelText.text = "TURKEY"
            isChange = false
        }
    }


}

