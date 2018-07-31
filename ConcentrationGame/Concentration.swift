//
//  Concentration.swift
//  ConcentrationGame
//
//  Created by Akash Soni on 31/07/18.
//  Copyright © 2018 rdec 3. All rights reserved.
//

import Foundation
class Concentration{
    var cards:[Card] = Array<Card>()
    var indexOfOneAndOnlyFaceUpCard:Int!
    
    init(withPairOfCard pair:Int){
        for _ in 1...pair{
            let card = Card.init()
            cards += [card,card]
        }
    }
    func chooseCard(at index:Int){
        if !cards[index].isMatched {
            if let matchIndex = indexOfOneAndOnlyFaceUpCard, matchIndex != index {
                // check if cards match
                if cards[matchIndex].identifier == cards[index].identifier {
                    cards[matchIndex].isMatched = true
                    cards[index].isMatched = true
                }
                cards[index].isFaceUp = true
                indexOfOneAndOnlyFaceUpCard = nil    // not one and only ...
            } else {
                // either no card or two cards face up
                for flipdownIndex in cards.indices {
                    cards[flipdownIndex].isFaceUp = false
                }
                cards[index].isFaceUp = true
                indexOfOneAndOnlyFaceUpCard = index
            }
            
        }
    }
    
//TODO shuffle card
}
