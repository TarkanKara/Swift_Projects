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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // tableView ın delegate ve dataSource nu ViewController için bidiriyoruz.
        tableView.delegate = self
        tableView.dataSource = self
        
    }

    // numberOfRowsInSection ----> kaç tane row olacak
    // cellForRow atIndexPath ----> hücrenin içerisinde neler gösterilecek
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    // Table View Cell, Table View’a ait tekrar eden satırlardur. Table View Cell ise UITableViewCell sınıfının bir oluşumudur.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "Tarkan"
        return cell
    }
}

