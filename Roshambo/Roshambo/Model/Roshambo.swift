//
//  Roshambo.swift
//  Roshambo
//
//  Created by Shenglong Jiang on 21/05/2019.
//  Copyright © 2019 Shenglong Jiang. All rights reserved.
//

import Foundation

enum Roshambo: Comparable{
    
    case Rock, Paper, Scissors
    
    static func < (lhs: Roshambo, rhs: Roshambo) -> Bool {
        return false
    }
    
    static func > (lhs: Roshambo, rhs: Roshambo) -> Bool {
        return true
    }
}
