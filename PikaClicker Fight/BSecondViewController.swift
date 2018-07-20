//
//  SecondViewController.swift
//  PikaClicker Fight
//
//  Created by Aslan Lee on 7/16/18.
//  Copyright © 2018 Aslan Lee. All rights reserved.
//

import UIKit

class BSecondViewController: UIViewController {
    
    var imageName = "mew"
    
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
    var pokeNames = ["pikachu", "squirtle", "charmander", "eevee", "bulbasaur", "bellsprout", "rattata", "snorlax", "meowth", "dratini", "jigglypuff", "mew"]
    var player1 = 0
    var pickCounter = 0
    
    func choosePlayer (choice: Int){
            for button in buttons
            {
                    button.setBackgroundImage(nil, for: UIControlState.normal)
            }
            player1 = choice
            imageName = pokeNames[choice]
        buttons[choice].setBackgroundImage(#imageLiteral(resourceName: "blue box"), for: UIControlState.normal)
    
        pickCounter += 1
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
        pickCounter = 0
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dvc = segue.destination as! ThirdViewController
        dvc.imageName = imageName
    }
    
    @IBAction func battleButton(_ sender: Any) {
        if pickCounter >= 1 {
            performSegue(withIdentifier: "twoToThree", sender: (Any).self)
        }
    }
    
}
