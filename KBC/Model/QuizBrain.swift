//
//  kbcData.swift
//  KBC
//
//  Created by ABDUR RAFAY on 25/09/2024.
//

import Foundation

struct QuizBrain{
    let quiz = [Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], cA: "Skin"),
                Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], cA: "100"),
                Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], cA: "Greenwich Mean Time"),
                Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], cA: "Chapeau"),
                Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], cA: "Watch"),
                Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], cA: "Adiós"),
                Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], cA: "Orange"),
                Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], cA: "Rum"),
                Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], cA: "Gorilla"),
                Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], cA: "Australia")
                
    ]
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer : String) -> Bool{
        if userAnswer == quiz[questionNumber].correctAnswer{
            score += 1
            return true
        }
        else{
            return false
        }
    }
    func getQuestionText() -> String{
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float{
        let progressView = Float(questionNumber + 1) / Float(quiz.count)
        return progressView
    }
    
    mutating func getScore() -> Int{
        return score
    }
    
    mutating func getAnswerOptions() -> [String]{
        return quiz[questionNumber].answer
    }
    
    mutating func nextQuestion(){
        if questionNumber + 1 < quiz.count{
            questionNumber += 1
            
        }else{
            questionNumber = 0
            score = 0
        }
    }
    
    
}

