//
//  ViewController.swift
//  PrecognitionScience
//
//  Created by Konstantine Nikka-Sher Piterman on 4/23/20.
//  Copyright © 2020 Konstantine Nikka-Sher Piterman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var correct: Int = 0

    var incorrect: Int = 0
    
    var prediction: String!
    
    var result: String!
    
    @IBOutlet weak var correctGuesses: UILabel!
    @IBOutlet weak var incorrectGuesses: UILabel!
    
    
    @IBOutlet weak var randomLetter: UILabel!
    
        @IBOutlet weak var yourGuess: UILabel!
    
    @IBAction func aPressed(_ sender: Any) {
        yourGuess.text = "A"
        
        numberDraw()

        prediction = "A"
         checkPrediction(prediction: prediction, result: result)
        
        correctGuesses.text = "\(correct)"
        incorrectGuesses.text = "\(incorrect)"
    }
    
    @IBAction func bPressed(_ sender: Any) {
        
        yourGuess.text = "B"
        numberDraw()
 
        prediction = "B"
                checkPrediction(prediction: prediction, result: result)
        
        correctGuesses.text = "\(correct)"
              incorrectGuesses.text = "\(incorrect)"
    }
    
    
    func numberDraw() {
  
        let options = ["A", "B"]
        let randomOption = options.randomElement()!
               result = randomOption
        randomLetter.text = result
        

        
        print(randomOption)

      print(correct)
        print(incorrect)
        
    }
    
    
    func checkPrediction(prediction: String, result: String) {

        if prediction == result {
            correct = correct + 1
        } else {
            incorrect = incorrect + 1
        }
        
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }


}

