//
//  MockableHttpClient.swift
//  SWIFTUIExpandedListTests
//
//  Created by Yogini Unde on 21/05/24.
//

import Foundation
@testable import SWIFTUIExpandedList

final class MockableHttpClient: HttpClientProtocol, Mockable {
 
    func fetch<T>() async throws -> T where T : Decodable, T : Encodable {
        return loadJSON(filename: Constants.fileName, type: T.self)
    }
    
}
