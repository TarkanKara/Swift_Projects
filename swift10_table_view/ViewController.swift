//
//  ViewController.swift
//  swift10_table_view
//
//  Created by Tarkan Kara on 15.04.2023.
//

import UIKit

// UITableViewDelegate ekliyoruz
// UITableViewDataSource
// UITableViewDelegate table view’a ait görüntünün ve kullanıcı etkileşimlerini yönetir. Örnek vermek gerekirse table view üzerinde bir cell seçildiğinde ya da sağa & sola kaydırıldığında bu delegate metodları table view’ın bilgilendirilmesine yardımcı olur.
// UITableViewDataSource table view üzerinde görüntülenecek verinin bölümlerinden (section) ve bu bölümlerin satır sayısına (row) gerekli düzenlemeleri yapan metodları içerir.
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var countryName = [String]()
    //var countryImage = [UIImage]()
    var contryImageStr = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // tableView ın delegate ve dataSource nu ViewController için bidiriyoruz.
        tableView.delegate = self
        tableView.dataSource = self
        
        countryName.append("Almanya")
        countryName.append("Amerika")
        countryName.append("Fransa")
        countryName.append("Hollanda")
        countryName.append("Türkiye")
        
        // Diğer ViewController Sayfamızda görselleri kullanacağımızdan buna şimdilik gerek yok sadece isimlerini tutmamız yeterli
        // countryImage.append(UIImage(named: "almanya")!)
        // countryImage.append(UIImage(named: "amerika")!)
        // countryImage.append(UIImage(named: "fransa")!)
        // countryImage.append(UIImage(named: "hollanda")!)
        // countryImage.append(UIImage(named: "turkey")!)
        
        // isimlendirme assets klasörün içerisindeki gibi olacaktır. Aksi taktirde hata verecektir.
        contryImageStr.append("almanya")
        contryImageStr.append("amerika")
        contryImageStr.append("fransa")
        contryImageStr.append("hollanda")
        contryImageStr.append("turkey")
        
    }

    // numberOfRowsInSection ----> kaç tane row olacak
    // cellForRow atIndexPath ----> hücrenin içerisinde neler gösterilecek
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countryName.count
    }
    
    // Table View Cell, Table View’a ait tekrar eden satırlardur. Table View Cell ise UITableViewCell sınıfının bir oluşumudur.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        //cell.textLabel?.text = "Tarkan"
        cell.textLabel?.text = countryName[indexPath.row]
        return cell
    }
    
    // TableView de row hücrelerini silme işlemleri
    // commit editingStyle
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        //Verileri Dizinin içerisinde çıkaracağız
        // TableView güncelleme işlemleri yapacağız
        if editingStyle == .delete {
            countryName.remove(at: indexPath.row)
            contryImageStr.remove(at: indexPath.row)
            //TableView güncelleme
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }
    
    // Bir hücreye veya row a tıklandığında ne olacağına karar vermem için aşağıdaki fonksşyonu kullanıyoruz.
    // didSelectRowAt
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toDetailVC", sender: nil)
    }
}

