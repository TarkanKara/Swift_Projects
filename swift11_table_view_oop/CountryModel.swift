//
//  CountryModel.swift
//  swift11_table_view_oop
//
//  Created by Tarkan Kara on 15.04.2023.
//

import Foundation

class CountryModel {
    
    var name : String
    var area : String
    var image : String
    var description : String
    
    init(name: String, area: String, image: String, description: String) {
        self.name = name
        self.area = area
        self.image = image
        self.description = description
    }
}
