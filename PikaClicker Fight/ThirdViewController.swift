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
    var height = 50
    var lifeCounter2 = 1.5
    var lifeCounter1 = 1.5
    
    @IBOutlet weak var fighter1Outlet: UIButton!
    @IBOutlet weak var fighter2Outlet: UIButton!
    @IBOutlet weak var player1Line: UILabel!
    @IBOutlet weak var player2Line: UILabel!
    
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
//        height += 10
//        var label = UILabel(frame: CGRect(x: 0, y: 0, width: 25, height: height))
//        label.backgroundColor = .red
//        let rand = Int(arc4random_uniform(312))
//        let label = UILabel(frame: CGRect(x: rand, y: 199, width: 63, height: 59))
//        label.center = CGPoint(x: rand, y: 285)
//        label.textAlignment = .center
//        label.text = "⚡" //make a variable, then make if statement (if image == pikachuSmiling)
//        label.isHidden = true // hides the label till animation starts
//        self.view.addSubview(label)
//        label.center.y -= view.bounds.width
//        label.isHidden = false // its there!
//        UIView.animate(withDuration: 2.0, animations: {
//            label.center.y += self.view.bounds.width
//        })
//        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0, execute: {
//            UILabel.animate(withDuration: 1) {
//                label.alpha = 0
//            }
//        })
        player1Line.transform = CGAffineTransform(scaleX: 1, y: CGFloat(lifeCounter1))
        lifeCounter1 += 0.35
    }
    
    @IBAction func fighter2(_ sender: Any) {
    fightCounter2 += 1
        checkForWinner()
//        let rand2 = Int(arc4random_uniform(312))
//        let label2 = UILabel(frame: CGRect(x: rand2, y: 647, width: 63, height: 59))
//        label2.center = CGPoint(x: rand2, y: 647)
//        label2.textAlignment = .center
//        label2.text = "⚡" //make a variable, then make if statement (if image == pikachuSmiling)
//        label2.isHidden = true // hides the label till animation starts
//        self.view.addSubview(label2)
//        label2.center.y -= view.bounds.width
//        label2.isHidden = false // its there!
//        UIView.animate(withDuration: 2.0, animations: {
//            label2.center.y += self.view.bounds.width
//        })
//        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0, execute: {
//            UILabel.animate(withDuration: 1) {
//                label2.alpha = 0
//            }
//        })
        player2Line.transform = CGAffineTransform(scaleX: 1, y: CGFloat(lifeCounter2))
        lifeCounter2 += 0.35
    }
    
    func checkForWinner()
    {
        if fightCounter1 == 40{
            showAlert(winner: imageName)
        }
        if fightCounter2 == 40{
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
