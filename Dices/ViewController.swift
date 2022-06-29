//
//  ViewController.swift
//  Dices
//
//  Created by Beavean on 29.06.2022.
//

import UIKit

class ViewController: UIViewController {
    let arrayOfDices = ["DiceOne", "DiceTwo", "DiceThree", "DiceFive", "DiceSix"]
    
    @IBOutlet weak var leftDice: UIImageView!
    @IBOutlet weak var rightDice: UIImageView!
    @IBOutlet weak var rollButton: UIButton!
    @IBOutlet weak var leftDiceView: UIView!
    @IBOutlet weak var rightDiceView: UIView!
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        UIView.animate(withDuration: 0.2, delay: 0.0) {
            self.rollButton.alpha = 0.1
            self.rightDiceView.transform = self.rightDiceView.transform.rotated(by: .pi)
            self.leftDiceView.transform = self.leftDiceView.transform.rotated(by: .pi)
            UIView.animate(withDuration: 0.1, delay: 0) {
                self.rightDice.image = UIImage(named: self.arrayOfDices.randomElement()!)
                self.leftDice.image = UIImage(named: self.arrayOfDices.randomElement()!)
                self.rollButton.alpha = 1
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        leftDiceView.layer.cornerRadius = leftDiceView.frame.height / 20
        rightDiceView.layer.cornerRadius = rightDiceView.frame.height / 20
        rollButton.layer.cornerRadius = rollButton.frame.height / 2
        
    }
    
    
}

