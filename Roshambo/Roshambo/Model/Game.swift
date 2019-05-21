//
//  Game.swift
//  Roshambo
//
//  Created by Shenglong Jiang on 21/05/2019.
//  Copyright © 2019 Shenglong Jiang. All rights reserved.
//

import Foundation

class Game: NSObject {
    
    func nextRound(player1: Roshambo, player2: Roshambo) -> Roshambo.Result {
        return player1.compares(r: player2)
    }
    
}
