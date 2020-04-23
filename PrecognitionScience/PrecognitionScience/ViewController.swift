//
//  ViewController.swift
//  PrecognitionScience
//
//  Created by Konstantine Nikka-Sher Piterman on 4/23/20.
//  Copyright © 2020 Konstantine Nikka-Sher Piterman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var randomLetter: UILabel!
    
        @IBOutlet weak var yourGuess: UILabel!
    
    @IBAction func aPressed(_ sender: Any) {
        yourGuess.text = "Prediction: A"
        
      
        
    }
    
    @IBAction func bPressed(_ sender: Any) {
        
        yourGuess.text = "Prediction: B"
    }
    
    
    func numberDraw() {
        
        
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

