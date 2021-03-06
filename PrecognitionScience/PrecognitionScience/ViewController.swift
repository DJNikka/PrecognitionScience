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
       
        
        numberDraw()

        prediction = "A"
         yourGuess.text = prediction
         checkPrediction(prediction: prediction, result: result)
        
        correctGuesses.text = "\(correct)"
        incorrectGuesses.text = "\(incorrect)"
    }
    
    @IBAction func bPressed(_ sender: Any) {
        
    
        numberDraw()
 prediction = "B"
           yourGuess.text = prediction
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
            randomLetter.backgroundColor = UIColor.green
      
                   
           
        } else {
            incorrect = incorrect + 1
                randomLetter.backgroundColor = UIColor.red
        }
        
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }


}

