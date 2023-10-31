//
//  FriendsTests.swift
//  FriendsTests
//
//  Created by Jan Große Jüttermann on 23.10.23.
//

import XCTest
@testable import Friends

final class FriendsTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testGetFriends() async throws {
        guard let url = URL(string: "http://localhost:3000/friends?filter=%7B%0A%20%20%22include%22%3A%20%5B%0A%20%20%20%20%7B%0A%20%20%20%20%20%20%22relation%22%3A%20%22addresses%22%0A%20%20%20%20%7D%0A%20%20%5D%0A%7D") else { fatalError("Missing URL") }
            let urlRequest = URLRequest(url: url)
            let (data, response) = try await URLSession.shared.data(for: urlRequest)

            guard (response as? HTTPURLResponse)?.statusCode == 200 else { fatalError("Error while fetching data") }
        let decodedFriends = try JSONDecoder().decode([Friend].self, from: data)
        XCTAssertFalse(decodedFriends.isEmpty)
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
