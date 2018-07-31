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
    init(withPairOfCard pair:Int){
        for _ in 1...pair{
            let card = Card.init()
            cards += [card,card]
        }
    }
    func chooseCard(at index:Int){
        if self.cards[index].isFaceUp{
            self.cards[index].isFaceUp = false
            
        }else{
            self.cards[index].isFaceUp = true

        }
    }
    
//TODO shuffle card
}
