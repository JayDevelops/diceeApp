//
//  ViewController.swift
//  Dicee
//
//  Created by Jesus Perez on 6/17/18.
//  Copyright © 2018 Jesus Perez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    //First Dice Image View, for the first dice!
    @IBOutlet weak var diceImageView1: UIImageView!
    
    //Second Dice Image View, for the second dice!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Call to the updateDiceImages function!!!
        updateDiceImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //When the user interacts with the button!
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    
    //This function makes random Dice Images to the UI Images
    func updateDiceImages() {
        //The 'Int' method makes the random method to an integer, known as 'casting'
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        /*The dot notaion gets the image property to update
          Next it is updated by the random method to the diceArray accordingly*/
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
    /*Motion with the phone here, once the motion has ended, it will call to the updateDiceImages function!*/
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }

}

