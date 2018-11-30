//
//  DotGame.swift
//  Sober Score 1002
//
//  Created by Da/Users/dannysolomon/Desktop/Sober-Score/Sober Score 1002/HomeViewController.swiftniel Solomon on 11/29/18.
//  Copyright © 2018 Quinn Perini. All rights reserved.
//

import UIKit

class DotGameViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var counterLabel: UILabel!
    
    var reflex = Timer()
    var scoreTImer = Timer()
    
    var timerInt = 0
    var scoreInt = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoreInt = 0
        counterLabel.text = String(scoreInt)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func StartStop(_ sender: AnyObject){
        if scoreInt == 0 {
            
            timerInt = 3
            
            reflex = Timer.scheduledTimer(timeInterval: 0.0001, target: self, selector: #selector(DotGameViewController.updateScoreTimer), userInfo: nil, repeats: true)
        }
        
    }
    
    @objc func updateScoreTimer() {
        
        scoreInt += 1
        counterLabel.text = String(scoreInt)
    }
}

