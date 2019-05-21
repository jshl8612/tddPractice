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
        _status = .Player1Advanced
        return player1.compares(r: player2)
    }
    
    
    
}
