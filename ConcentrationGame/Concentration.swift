//
//  Concentration.swift
//  ConcentrationGame
//
//  Created by Akash Soni on 31/07/18.
//  Copyright © 2018 rdec 3. All rights reserved.
//

import Foundation
class Concentration{
    private(set) var cards:[Card] = Array<Card>()
    private var indexOfOneAndOnlyFaceUpCard:Int!{
        get{
            var foundIndex:Int?
            for index in cards.indices{
                if cards[index].isFaceUp{
                    if foundIndex == nil{
                        foundIndex = index
                    }else{
                        return nil
                    }
                }
            }
            return foundIndex
        }
        set{
            for index in cards.indices{
                cards[index].isFaceUp = (index == newValue)
            }
        }
    }
    
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
            } else {
                // either no card or two cards face up
                indexOfOneAndOnlyFaceUpCard = index
            }
            
        }
    }
    
//TODO shuffle card
}
