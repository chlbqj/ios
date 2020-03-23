//
//  ViewController.swift
//  homework
//
//  Created by student on 2020/3/23.
//  Copyright © 2020年 105590026. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet var cardButtons: [UIButton]!
    
    lazy var game:MatchingGame = MatchingGame(numberOfPairsOfCards: (cardButtons.count+1)/2)
    
    @IBAction func resetAllButtons(_ sender: UIButton) {
        for index in cardButtons.indices {
            game.cards[index].isFaceUp = false
            updateViewFromModel()
        }
    }
    @IBAction func touchCard(_ sender: UIButton) {
        if let cardNumber = cardButtons.index(of: sender){
            print("cardNumber = \(String(describing: cardNumber))")
            game.chooseCard(at: cardNumber)
            updateViewFromModel()
        } else {
            print("Not in the collection")
        }
        flipCount += 1
    }
    
    func emoji(for card:Card) -> String {
        return "?"
    }
    
    func updateViewFromModel() {
        for index in cardButtons.indices {
            let button = cardButtons[index]
            let card = game.cards[index]
            if card.isFaceUp {
                button.setTitle(emoji(for: card), for: .normal)
                button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            } else {
                button.setTitle("", for: .normal)
                button.backgroundColor = #colorLiteral(red: 1, green: 0.6443301376, blue: 0, alpha: 1)
            }
        }
    }
    
    var flipCount:Int = 0
    {
        didSet {
            resultLabel.text = "flip: \(flipCount)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

