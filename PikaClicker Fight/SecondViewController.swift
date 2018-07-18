//
//  SecondViewController.swift
//  PikaClicker Fight
//
//  Created by Aslan Lee on 7/16/18.
//  Copyright © 2018 Aslan Lee. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var pikachu: UIButton!
    @IBOutlet weak var squirtle: UIButton!
    @IBOutlet weak var charmander: UIButton!
    @IBOutlet weak var eevee: UIButton!
    @IBOutlet weak var bulbasaur: UIButton!
    @IBOutlet weak var bellsprout: UIButton!
    @IBOutlet weak var rattatta: UIButton!
    @IBOutlet weak var snorlax: UIButton!
    @IBOutlet weak var meowth: UIButton!
    @IBOutlet weak var dratini: UIButton!
    @IBOutlet weak var jigglypuff: UIButton!
    @IBOutlet weak var mew: UIButton!
    
    var buttons = [UIButton]()
    var player1 = 0
    var player2 = 0
    var player1Pick = true
    
    func choosePlayer (choice: Int){
        if player1Pick {
            for button in buttons
            {
                if (buttons[player2] != button)
                {
                    button.setBackgroundImage(nil, for: UIControlState.normal)
                }
            }
            player1 = choice
            buttons[choice].setBackgroundImage(#imageLiteral(resourceName: "blue box"), for: UIControlState.normal)
            player1Pick = false
            
        }
        else
        {
            for button in buttons
            {
                if (buttons[player1] != button)
                {
                    button.setBackgroundImage(nil, for: UIControlState.normal)
                }
            }
            player2 = choice
            buttons[choice].setBackgroundImage(#imageLiteral(resourceName: "red box"), for: UIControlState.normal)
            player1Pick = true
        }
        
    }
    
    @IBAction func pikachuCharacterButton(_ sender: Any) {
        choosePlayer(choice: 0)
    }
    @IBAction func squirtleCharacterButton(_ sender: Any) {
        choosePlayer(choice: 1)
    }
    @IBAction func charmanderCharacterButton(_ sender: Any) {
        choosePlayer(choice: 2)
    }
    @IBAction func eeveeCharacterButton(_ sender: Any) {
        choosePlayer(choice: 3)
    }
    @IBAction func bulbasaurCharacterButton(_ sender: Any) {
        choosePlayer(choice: 4)
    }
    @IBAction func bellsproutCharacterButton(_ sender: Any) {
        choosePlayer(choice: 5)
    }
    @IBAction func rattleCharacterButton(_ sender: Any) {
        choosePlayer(choice: 6)
    }
    @IBAction func snorlaxCharacterButton(_ sender: Any) {
        choosePlayer(choice: 7)
    }
    @IBAction func meowthCharacterButton(_ sender: Any) {
        choosePlayer(choice: 8)
    }
    @IBAction func dratiniCharacterButton(_ sender: Any) {
        choosePlayer(choice: 9)
    }
    @IBAction func jigglypuffCharacterButton(_ sender: Any) {
        choosePlayer(choice: 10)
    }
    @IBAction func mewCharacterButton(_ sender: Any) {
        choosePlayer(choice: 11)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttons.append(pikachu)
        buttons.append(squirtle)
        buttons.append(charmander)
        buttons.append(eevee)
        buttons.append(bulbasaur)
        buttons.append(bellsprout)
        buttons.append(rattatta)
        buttons.append(snorlax)
        buttons.append(meowth)
        buttons.append(dratini)
        buttons.append(jigglypuff)
        buttons.append(mew)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    


}
