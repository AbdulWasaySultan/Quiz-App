//
//  Question.swift
//  KBC
//
//  Created by ABDUR RAFAY on 25/09/2024.
//

import Foundation

struct Question{
    let text : String
    let answer : [String]
    let correctAnswer : String
    
    
    init(q : String, a : [String], cA : String) {
        self.text = q
        self.answer = a
        self.correctAnswer = cA
    }
}
