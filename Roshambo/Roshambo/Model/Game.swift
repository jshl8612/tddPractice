//
//  Game.swift
//  Roshambo
//
//  Created by Shenglong Jiang on 21/05/2019.
//  Copyright © 2019 Shenglong Jiang. All rights reserved.
//

import Foundation

class Game: NSObject {
    
    enum Status {
        case Player1Win, Player2Win, Player1Advanced, Player2Advanced, None
    }
    
    private var _status: Status = .None
    
    var status: Status {
        return _status
    }
    
    func nextRound(player1: Roshambo, player2: Roshambo) -> Roshambo.Result {
        let result = player1.compares(r: player2)
        
        updateStatus(by: result)
        return result
    }
    
    func updateStatus(by result: Roshambo.Result) {
        switch (_status, result) {
        case (.Player1Advanced, .Equal):
            _status = .Player1Win
        case (.None, .Win):
            _status = .Player1Advanced
        case (.Player1Advanced, .Lost), (.Player1Advanced, .Win),
             (.Player2Advanced, .Win), (.Player2Advanced, .Lost):
            _status = .None
        case (.None, .Lost):
            _status = .Player2Advanced
        case (.Player2Advanced, .Equal):
            _status = .Player2Win
        default:
            break
        }
    }
    
}
