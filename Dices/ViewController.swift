//
//  ViewController.swift
//  Dices
//
//  Created by Beavean on 29.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftDice: UIImageView!
    @IBOutlet weak var rightDice: UIImageView!
    @IBOutlet weak var rollButton: UIButton!
    @IBOutlet weak var leftDiceView: UIView!
    @IBOutlet weak var rightDiceView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        leftDiceView.layer.cornerRadius = leftDiceView.frame.height / 20
        rightDiceView.layer.cornerRadius = rightDiceView.frame.height / 20
        rollButton.layer.cornerRadius = rollButton.frame.height / 2
        
    }


}

