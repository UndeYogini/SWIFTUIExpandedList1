//
//  CityListModel.swift
//  SWIFTUIExpandedList
//
//  Created by Yogini Unde on 21/05/24.
//

import Foundation

struct CityListModel: Decodable, Identifiable {
    let id = UUID()
    var city: String?
   var adminName: String?
    var items: [CityListModel]?
    var lat: String?
    var lng: String?
    var population: String?

    
    init(city: String, items: [CityListModel]) {
        self.city = city
        self.items = items
    }
    
    
}
