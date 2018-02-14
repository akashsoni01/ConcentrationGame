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
    var flipCount:Int = 0
    
    @IBAction func cardTouchAction(_ sender: UIButton) {
    }
    func flipCard(){
        flipCount += 1
    }
}

