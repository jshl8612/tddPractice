//
//  GameTest.swift
//  RoshamboTests
//
//  Created by Shenglong Jiang on 21/05/2019.
//  Copyright © 2019 Shenglong Jiang. All rights reserved.
//

import XCTest
@testable import Roshambo

class GameTests: XCTestCase {
    
    var game: Game = Game()
    
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
    
    // 게임에서 한round의 결과가 맞는 결과가 생기는것을 테스트
    func testPlayOneRound() {
        let player1 = Roshambo.Paper
        let player2 = Roshambo.Rock
        
        let result = game.nextRound(player1, player2)
        
        XCTAssertEqual(result, Roshambo.Results.Win)
    }
    
}
