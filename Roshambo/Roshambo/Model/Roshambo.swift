//
//  Roshambo.swift
//  Roshambo
//
//  Created by Shenglong Jiang on 21/05/2019.
//  Copyright © 2019 Shenglong Jiang. All rights reserved.
//

import Foundation

enum Roshambo: Comparable{
    
    enum Result {
        case Win, Equal, Lost
    }
    
    case Rock, Paper, Scissors
    
    static func < (lhs: Roshambo, rhs: Roshambo) -> Bool {
        switch (lhs, rhs) {
        case (.Rock, .Paper), (.Paper, .Scissors), (.Scissors, .Rock):
            return true
        default:
            return false
        }
    }
    
    static func > (lhs: Roshambo, rhs: Roshambo) -> Bool {
        switch (lhs, rhs) {
        case (.Paper, .Rock), (.Scissors, .Paper), (.Rock, .Scissors):
            return true
        default:
            return false
        }
    }
    
    func compares(r: Roshambo) -> Result {
        if self > r {
            return .Win
        } else if self == r {
            return .Equal
        } else {
            return .Lost
        }
    }
    
}
