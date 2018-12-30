//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Sílvia Curto on 30/12/2018.
//  Copyright © 2018 Sílvia Curto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNumber: Int = 0

    
    @IBOutlet weak var ImageBall: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib
        updateBall()
    }
    
    @IBAction func rollButtonPressed(_sender: UIButton){
        
        updateBall()
    }

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateBall()
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        
       updateBall()
       
    }
    
    func updateBall() {
        
        randomBallNumber = Int.random(in: 0...4)
        
        ImageBall.image = UIImage(named: ballArray[randomBallNumber])
    }
}

