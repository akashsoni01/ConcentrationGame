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
    var flipCount:Int = 0{
        didSet{
            flipCountDisplay.text = "flipcount:" + self
        }
    }
    
    @IBOutlet weak var flipCountDisplay: UILabel!
    var emojies = ["🎃","👻","🎃","👻"]
    @IBAction func cardTouchAction(_ sender: UIButton) {
        if let cardNumber = cardButtons.index(of:sender){
            flipCard(at: cardNumber, on: sender)
        }
        flipCount += 1
    }
    func flipCard(at index:Int,on button:UIButton){
        if button.currentTitle == emojies[index]{
            button.setTitle("", for: .normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)
        }else{
            button.setTitle(emojies[index], for: .normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}

