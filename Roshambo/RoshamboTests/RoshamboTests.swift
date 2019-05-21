//
//  RoshamboTests.swift
//  RoshamboTests
//
//  Created by Shenglong Jiang on 21/05/2019.
//  Copyright © 2019 Shenglong Jiang. All rights reserved.
//

import XCTest
@testable import Roshambo

class RoshamboTests: XCTestCase {
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

    /// 가위 > 보, 보 > 바위, 바위 > 가위
    func testAllWinCases() {
        
        XCTAssertTrue(Roshambo.Rock > Roshambo.Scissors)
        XCTAssertTrue(Roshambo.Scissors > Roshambo.Paper)
        XCTAssertTrue(Roshambo.Paper > Roshambo.Rock)
        
    }
}
