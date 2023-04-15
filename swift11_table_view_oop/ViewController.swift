//
//  ViewController.swift
//  swift11_table_view_oop
//
//  Created by Tarkan Kara on 15.04.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var country = [CountryModel?]()
    var selectedCountry :CountryModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        let ankara = CountryModel(name: "ANKARA", area: "İç Anadolu", image: "ankara", description: "Ankara, Türkiye'nin başkenti")
        let antalya = CountryModel(name: "ANTALYA", area: "Akdeniz", image: "antalya", description: "Türkiye'nin bir ili ve en kalabalık beşinci şehridir.")
        let istanbul = CountryModel(name: "İSTANBUL", area: "Marmara", image: "istanbu", description: "Ülkenin nüfus bakımından en çok göç alan ve en kalabalık ilidir")
        let izmir = CountryModel(name: "İZMİR", area: "Ege", image: "izmir", description: "Ülkenin nüfus bakımından en kalabalık üçüncü şehridir.")
        let van = CountryModel(name: "VAN", area: "Doğu Anadolu", image: "van", description: "Van, önemli bir kentsel alan olarak uzun bir geçmişe sahiptir.")
        
    
       country = [ankara, antalya,istanbul,izmir,van]
        
    }
    
    //Hücre Sayısı
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return country.count
    }
    
    //Hücrenin içeriği
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = country[indexPath.row]?.name
        return cell
    }
    
    //Hücre seçilirken oluşacak aksiyon --> Ekranlar arası geçiş -- (performSeque and prepare)
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedCountry = country[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    //Diğer Ekranları hazırlama
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destination = segue.destination as! DetailsViewController
            destination.countrySelected = selectedCountry
        }
    }
    
    //TableViewdeki silme buttonu
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            country.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
        }
    }

}

