//
//  ViewController.swift
//  swift5_life_cycles
//
//  Created by Tarkan Kara on 13.04.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("view did load")
        // controller heap'e alındıktan sonra henüz ekrana yüklenmeden birincil çağrılan fonksiyondur
        // stroyboard veya .xib üzerinden yüklenen IBOutlet nesneleri bu esnada yaratılmış durumdadır.
        // Data modelini kullanarak view objelerini güncellemek için uygun bir life-cycle
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("view did appear")
        // view gözüktü, ortaya çıktı
        // ekranın yüklenmesi tamamlandı ve kullanıcı şu anda ekranı görebiliyor
        // animasyon veya zamanlayıcı(timer) başlatmak için veya GPS gibi servisleri kullanmak için en iyi cycle.
        // maliyetli işlemler yapmaya başlamak için ideal.
    }

    override func viewDidDisappear(_ animated: Bool) {
        print("view did dis appear")
        // görünüm ortadan kayboldu
        // ekran yok olmuştur ve yüklenirken yaptığınız değişikleri sıfırlamak istiyorsanız doğru zamandasınız
        // ekrana ait verileri kaydetmek veya heap üzerinde kullanıdğınız objeleri release etmek için iyi bir lifecycle
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("view will appear")
        // view ortaya çıkacak, daha çıkmadı
        // controller sınıfının ekrana yüklenme anında çağırdığı fonksiyondur.
        // Ekran geometrisi hala net değil.
        // Birden çok kez çağrılır.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("view will dis appear")
        // view ortadan kaybolacak
        // Kullanıcı navigasyon'da geri giderken veya tab değiştiriken vs gibi durumlarda çağrılır.
        // Ekran hala yüklüdür fakat kullanıcı tarafından görülmemektedir
        // genelde viewDidApper lifecycle da yapılanları geri almak için kullanılır(zamanlayıcı durdurma, animasyonu durdurma vs gibi)
    }

    @IBAction func secondBtn(_ sender: Any) {
        performSegue(withIdentifier: "toSecondCV", sender: nil)
    }
}

