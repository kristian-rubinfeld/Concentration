//
//  Card.swift
//  Сoncentration
//
//  Created by Полина on 12.02.2021.
//

import Foundation

struct Card:Hashable {
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(identifier)
    }
    
    static func ==(lhs:Card, rhs:Card) -> Bool {
        return lhs.identifier == rhs.identifier
    }
    var isFaceUp=false
    var isMatched=false
    var identifier: Int
    
    private static var identifierNumber=0
    
    private static func identifierGenerator()
    -> Int {
        identifierNumber+=1
    return identifierNumber
        
    }
    init() {
        self.identifier=Card.identifierGenerator()
    }
}


