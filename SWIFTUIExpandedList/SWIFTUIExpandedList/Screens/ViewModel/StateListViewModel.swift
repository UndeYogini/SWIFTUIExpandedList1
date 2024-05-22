//
//  StateListViewModel.swift
//  SWIFTUIExpandedList
//
//  Created by Yogini Unde on 21/05/24.
//

import Foundation
 private var items: [CityListModel] = []

class StateListViewModel: ObservableObject {
    // MARK: - Properties
    var httpClient: HttpClientProtocol!
    @Published var cityList: [CityListModel] = []


    func getJson()
    {
    guard let filePath = Bundle.main.url(forResource: Constants.fileName, withExtension: Constants.fileExtension) else {
    items = []
    return
    }

    do {
    let data = try Data(contentsOf: filePath)
    let results = try JSONDecoder().decode([CityListModel].self, from: data)
    let dict = Dictionary(grouping: results, by: { $0.adminName})
    print(dict)
    items = dict.sorted(by: { $0.key ?? "" < $1.key ?? "" }).map { (key, value) -> CityListModel in
        return CityListModel(city: key!, items: value)
    }
    } catch {
    print(error)
    }
    }
}
