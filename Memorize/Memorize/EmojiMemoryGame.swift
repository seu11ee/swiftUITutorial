//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by 이예슬 on 2022/07/13.
//

import SwiftUI // part of the UI


class EmojiMemoryGame {
    static let emojis = ["😀","😉","😁","😅","🤣","😇","🙃","🤓","🥺","😎","🤩","🥳","🥸"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in EmojiMemoryGame.emojis[pairIndex]
            
        }
    }

    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()

    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
