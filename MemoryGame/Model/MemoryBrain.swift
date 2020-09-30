//
//  MemoryBrain.swift
//  MemoryGame
//
//  Created by IOS on 22/09/20.
//  Copyright © 2020 iOS. All rights reserved.
//

import Foundation

struct MemoryBrain {
    var langkah = 0
    var arrayOfCards = [Card]()
    
    mutating func nextLangkah() {
        langkah += 1
    }
    func getLangkah() -> Int {
        return langkah
    }
    mutating func generateCards16() {
        arrayOfCards.removeAll()
        for i in 1...8 {
            var newCard = Card()
            newCard.name = "card\(i)"
            arrayOfCards.append(newCard)
            
            var newCard2 = Card()
            newCard2.name = "card\(i)"
            arrayOfCards.append(newCard2)
        }
        
        arrayOfCards.shuffle()
    }
    mutating func generateCards36() {
        arrayOfCards.removeAll()
        for i in 1...18 {
            var newCard = Card()
            newCard.name = "card\(i)"
            arrayOfCards.append(newCard)
            
            var newCard2 = Card()
            newCard2.name = "card\(i)"
            arrayOfCards.append(newCard2)
        }
        
        arrayOfCards.shuffle()
    }
    func getCards() -> [Card] {
        return arrayOfCards
    }
}
