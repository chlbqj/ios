//
//  MatchingGame.swift
//  homework
//
//  Created by student on 2020/3/23.
//  Copyright © 2020年 105590026. All rights reserved.
//

import Foundation

class MatchingGame {
    var cards = [Card]()
    
    func chooseCard(at index:Int) {
        if cards[index].isFaceUp {
            cards[index].isFaceUp = false
        } else {
            cards[index].isFaceUp = true
        }
    }
    
    init(numberOfPairsOfCards: Int){
//        let card = Card(identifier: 0)
        for i in 1...numberOfPairsOfCards{
            let card = Card(identifier: i)
            cards.append(card)
//            let matchingCard = Card(identifier: i)
//            cards.append(matchingCard)
            cards.append(card)
        }
    }
}
