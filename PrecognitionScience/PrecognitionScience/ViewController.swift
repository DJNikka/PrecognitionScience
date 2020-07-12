//
//  ViewController.swift
//  PrecognitionScience
//
//  Created by Konstantine Nikka-Sher Piterman on 4/23/20.
//  Copyright © 2020 Konstantine Nikka-Sher Piterman. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var correct: Int = 0

    var incorrect: Int = 0
    
    var prediction: String!
    
    var result: String!
    
    var audioPlayer = AVAudioPlayer()
    
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
    
    
    @IBAction func cPressed(_ sender: Any) {
        prediction = "C"
        yourGuess.text = prediction
        checkPrediction(prediction: prediction, result: result)
        
        correctGuesses.text = "\(correct)"
              incorrectGuesses.text = "\(incorrect)"
        
    }
    
    func numberDraw() {
  
   
        
        let options = ["A", "B", "C", "D"]
        let randomOption = options.randomElement()!
               result = randomOption
        randomLetter.text = result
        
        print(randomOption)

      print(correct)
        print(incorrect)
        
    }
    
    func checkPrediction(prediction: String, result: String) {

     //  Needs to allow variable to change the number of cells so it can be 1/10 or 1/100 roulette. 
        
        if prediction == result {
            correct = correct + 1
            randomLetter.backgroundColor = UIColor.green
      
            let sounds = ["correct1"]
            
            var randomBell = sounds.randomElement()
            
            
            let sound = Bundle.main.path(forResource: randomBell, ofType: ".wav")
            
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
                audioPlayer.play()
            }
            catch {
                print(error)
            }
           
        } else {
            incorrect = incorrect + 1
                randomLetter.backgroundColor = UIColor.red
            let sound = Bundle.main.path(forResource: "incorrect1", ofType: ".wav")
            
            do {
           audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
              
                audioPlayer.volume = 0.1
                audioPlayer.play()
                
            }
        catch {
                        print(error)
                }
        }
        
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }


}

