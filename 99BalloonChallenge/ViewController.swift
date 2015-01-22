//
//  ViewController.swift
//  99BalloonChallenge
//
//  Created by Casey Yu on 1/22/15.
//  Copyright (c) 2015 Casey Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ballonsLabel: UILabel!
    @IBOutlet weak var UIImageView1: UIImageView!
    
    var myBalloons:[Balloon] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        //Initialize 99 balloons
        for var i = 1 ; i <= 99 ; i++ {
            var balloonInstance = Balloon()
            balloonInstance.balloonNumber = Int(arc4random_uniform(UInt32(100)))
            balloonInstance.imagePath = balloonInstance.GetBalloonImageNames()
            
            myBalloons += [balloonInstance]
        }
        
        //Binding to UI elements
        ballonsLabel.text = "Balloons"
        UIImageView1.image = UIImage(named: "BerlinTVTower.jpg")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func NextPressedAction(sender: UIBarButtonItem) {
        
        var randomBalloonIndex = Int(arc4random_uniform(UInt32(99)))
        
        //Binding to UI elements
//        ballonsLabel.text = "\(myBalloons[randomBalloonIndex].balloonNumber)" + " Balloons"
//        UIImageView1.image = UIImage(named: myBalloons[randomBalloonIndex].imagePath)
        
        UIView.transitionWithView(self.view, duration: 2, options: UIViewAnimationOptions.TransitionCrossDissolve, animations: {
            self.UIImageView1.image = UIImage(named: self.myBalloons[randomBalloonIndex].imagePath)
            self.ballonsLabel.text = "\(self.myBalloons[randomBalloonIndex].balloonNumber)" + " Balloons"
            }, completion: {
                (finished: Bool) -> () in
        })
    }
}

