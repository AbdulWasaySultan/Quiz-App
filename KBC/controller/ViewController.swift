//
//  ViewController.swift
//  KBC
//
//  Created by ABDUR RAFAY on 25/09/2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var A: UIButton!
    @IBOutlet weak var B: UIButton!
    @IBOutlet weak var C: UIButton!
    
    @IBOutlet weak var progressView: UIProgressView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    var quizBrain = QuizBrain()
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        if let userAnswer = sender.currentTitle{
            let userGotItRight = quizBrain.checkAnswer(userAnswer)
            
            if userGotItRight{
                sender.backgroundColor = UIColor.green
            } else {
                sender.backgroundColor = UIColor.red
            }
            
            quizBrain.nextQuestion()
            
            Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
            
        }
    }
    @objc func updateUI(){
        questionLabel.text = quizBrain.getQuestionText()
        let answerOptions = quizBrain.getAnswerOptions()
        
        if answerOptions.count > 0
        {
            A.setTitle(quizBrain.getAnswerOptions()[0], for: .normal)
        }
        if answerOptions.count > 1
        {
            B.setTitle(quizBrain.getAnswerOptions()[1], for: .normal)
        }
        if answerOptions.count > 2 {
            
            C.setTitle(quizBrain.getAnswerOptions()[2], for: .normal)
        }
        
        progressView.progress = quizBrain.getProgress()
        scoreLabel.text = "Score : \(quizBrain.getScore())"
        A.backgroundColor = UIColor.clear
        B.backgroundColor = UIColor.clear
        C.backgroundColor = UIColor.clear
        
        //        trueButton.backgroundColor = UIColor.clear
        //        falseButton.backgroundColor = UIColor.clear
    }
    
    
}

