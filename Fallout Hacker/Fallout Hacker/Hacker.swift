//
//  Hacker.swift
//  Fallout Hacker
//
//  Created by Alex Koumparos on 27/11/16.
//  Copyright © 2016 Koumparos Software. All rights reserved.
//

import Foundation

class Hacker {
    
    static let sharedInstance = Hacker()
    
    private init() { }
    
    private func matchingCharacters(firstWord first: String, secondWord second: String) -> Int {
        
        let comparisonSequence = zip(first.characters, second.characters)
        
        let comparisonResult = comparisonSequence.map { $0.0 == $0.1 }
        
        let numberOfSameCharacters = comparisonResult.filter({$0 == true}).count
        
        return numberOfSameCharacters
    }
    
    func possibleWords(wordList arr: [String], testWord: String, numberOfMatchingCharacters matches: Int) -> [String] {
        
        return arr.filter { matchingCharacters(firstWord: $0, secondWord: testWord) == matches}
        
    }
    
    
}

