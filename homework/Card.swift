//
//  Card.swift
//  homework
//
//  Created by student on 2020/3/23.
//  Copyright © 2020年 105590026. All rights reserved.
//

import Foundation

struct Card {
    var isFaceUp = true
    var isMatched = false
    var identifier: Int
    
    init(identifier i:Int){
        identifier = i
    }
}
