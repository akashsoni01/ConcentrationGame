//
//  Card.swift
//  ConcentrationGame
//
//  Created by Akash Soni on 31/07/18.
//  Copyright © 2018 rdec 3. All rights reserved.
//

import Foundation
struct Card {
    var isFaceUp = false
    var isMatched = false
    var identifier:Int
    private static var uniqueId = 0
    private static func identifireFectory() -> Int {
        uniqueId = uniqueId + 1
        return uniqueId
    }
    init() {
        self.identifier = Card.identifireFectory()
    }
    
}
