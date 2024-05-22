//
//  SWIFTUIExpandedListTests.swift
//  SWIFTUIExpandedListTests
//
//  Created by Yogini Unde on 21/05/24.
//

import XCTest
@testable import SWIFTUIExpandedList

final class SWIFTUIExpandedListTests: XCTestCase {
    
    var apiClient: MockableHttpClient!
    var wm = StateListViewModel()


    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        apiClient = MockableHttpClient()
        wm = StateListViewModel()

    }
  
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    // Test initial state of products
    func test_initial_state_has_empty_products() {
        XCTAssertEqual(wm.cityList.count, 0)
    }
    
    func test_get_request_withURL() {
        guard Constants.filepathUrl != nil else {
            fatalError(Constants.emptyURL)
        }
    }

    func  test_fetchdata_successfully() async throws{

        _ = XCTestExpectation(description: Constants.fetchCitylist)

    
    }

}
