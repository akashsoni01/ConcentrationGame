//
//  ViewController.swift
//  ConcentrationGame
//
//  Created by rdec 3 on 14/02/18.
//  Copyright © 2018 rdec 3. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    @IBOutlet var cardButtons: [UIButton]!
    
    lazy var game = Concentration.init(withPairOfCard:(self.cardButtons.count+1) / 2)

    var flipCount:Int = 0{
        didSet{
            flipCountDisplay.text = "Flip Count:" + String(self.flipCount)
        }
    }
    
    @IBOutlet weak var flipCountDisplay: UILabel!
    @IBAction func cardTouchAction(_ sender: UIButton) {
        flipCount += 1

        if let index = cardButtons.index(of:sender){
            game.chooseCard(at: index)
            updateViewFromModel()
        }else{
            print("button not found")
        }
    }
    
    func updateViewFromModel(){
        for index in cardButtons.indices {
            let button = cardButtons[index]
            let card = game.cards[index]
            if card.isFaceUp {
                button.setTitle(emoji(for: card), for: UIControlState.normal)
                button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            } else {
                button.setTitle("", for: UIControlState.normal)
                button.backgroundColor = card.isMatched ? #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 0) : #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
            }
        }
        
    }
    var emojiChoices = ["🦇", "😱", "🙀", "😈", "🎃", "👻", "🍭", "🍬", "🍎"]
    var emoji = Dictionary<Int,String>()
    func emoji(for card:Card) -> String{
        if emoji[card.identifier] == nil , emojiChoices.count > 0{
            let randomIndex = Int(arc4random_uniform(UInt32(emojiChoices.count)))
            emoji[card.identifier] = emojiChoices.remove(at: randomIndex)
        }
        return emoji[card.identifier] ?? "?"
    }
}

