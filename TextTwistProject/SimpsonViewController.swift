//
//  ViewController.swift
//  TextTwistProject
//
//  Created by Benjamin Stone on 11/4/19.
//  Copyright © 2019 Benjamin Stone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var scrambledLabel: UILabel!
    
    @IBOutlet weak var inputField: UITextField!
    @IBOutlet weak var rightWrongLabel: UILabel!
    
    var newWord = Word.getRandomWord()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputField.delegate = self
        
        scrambledLabel.text = newWord.scrambled
        print(newWord)
    }

    func checkAnswer() {
        let userInput = inputField.text?.lowercased() ?? ""
        
        if userInput == newWord.unscrambled {
      
            rightWrongLabel.text = "CORRECT"
            rightWrongLabel.backgroundColor = .green
            newScrambledWord()
        } else {
           
            rightWrongLabel.text = "WRONG!, Try Again"
            rightWrongLabel.backgroundColor = .red
        }
        
        
    }
    
    func newScrambledWord() {
        newWord = Word.getRandomWord()
        scrambledLabel.text = newWord.scrambled
        rightWrongLabel.backgroundColor = .clear
    }
    
    
    
    }
    
extension ViewController: UITextFieldDelegate {

    func textField(_ textField: UITextField,
                   shouldChangeCharactersIn range: NSRange,
                   replacementString string: String) -> Bool {
        

        if scrambledLabel.text?.contains(string) ?? false{
            //searching through the scramble word for the first location
                scrambledLabel.text?.remove(at: (scrambledLabel.text?.firstIndex(of: Character(string)))!)
            } else if string == ""{
               
                scrambledLabel.text?.insert(textField.text?.last ?? "z", at: scrambledLabel.text!.endIndex)
            } else {
                return false
            }
    return true
    }
    
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        // dismiss key board
        textField.resignFirstResponder()
        
        checkAnswer()
        
        // clears the text field
        textField.text = nil
        
        //newScrambledWord()
        return true
    }
    
  
}

