//
//  ThirdViewController.swift
//  PikaClicker Fight
//
//  Created by Aslan Lee on 7/18/18.
//  Copyright © 2018 Aslan Lee. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    
    var imageName = "mew"
    var imageName2 = "mew"
    var fightCounter1 = 0
    var fightCounter2 = 0
    
    @IBOutlet weak var fighter1Outlet: UIButton!
    @IBOutlet weak var fighter2Outlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fightCounter1 = 0
        fightCounter2 = 0
        fighter1Outlet.setImage(UIImage(named: imageName), for: .normal)
        fighter2Outlet.setImage(UIImage(named: imageName2), for: .normal)
        fighter1Outlet.transform = CGAffineTransform(rotationAngle: CGFloat(M_PI))
    }
    
    func showAlert(winner: String) // makes an alert for the winner
    {
        let alert = UIAlertController(title: winner + " won", message: nil, preferredStyle: .alert)
        alert.addAction(UIAlertAction (title: "Play Again", style: .default)
        {(action) in
            self.performSegue(withIdentifier: "threeToOne", sender: self)
        })
        present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func fighter1(_ sender: Any) {
    fightCounter1 += 1
        checkForWinner()
    }
    
    @IBAction func fighter2(_ sender: Any) {
    fightCounter2 += 1
        checkForWinner()
    }
    
    func checkForWinner()
    {
        if fightCounter1 == 5{
            showAlert(winner: imageName)
        }
        if fightCounter2 == 5{
            showAlert(winner: imageName2)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dvc = segue.destination as! ViewController
//        dvc.imageName = imageName
//        dvc.imageName2 = imageName2
    }
}
