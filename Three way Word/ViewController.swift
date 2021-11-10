//
//  ViewController.swift
//  Three way Word
//
//  Created by Kenneth Johnson on 11/4/21.
//

import UIKit

class ViewController: UIViewController
{
    //Declare Outlets and Variables
    
    @IBOutlet weak var currentLetter: UILabel!
    
    @IBOutlet var letterLabels: [UILabel]!
    
    @IBOutlet weak var horizontalStackView: UIStackView!
    
    var letters = [ "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    
    var currentLetterA = "A"
    
    var counter = 0
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func whenTappedAgain(_ sender: UITapGestureRecognizer)
    {
            //Initialize Current Letter and Labels
            currentLetterA = letters[counter]
            currentLetter.text = currentLetterA
            //Recognize where the user is tapping
            let seleectedpoint = sender.location(in: horizontalStackView)
            for label in letterLabels
            {
                if label.frame.contains(seleectedpoint)
                {
                    label.text = "\(currentLetterA)"
                }
            }
            
            counter += 1
            
            if counter == 26
            {
                counter = 0
                currentLetterA = letters[counter]
                currentLetter.text = currentLetterA
                for label in self.letterLabels
                {
                    label.text = "?"
                }
            }
    }
    
    
    
    
}

