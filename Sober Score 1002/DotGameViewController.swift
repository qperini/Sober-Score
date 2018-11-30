//
//  DotGame.swift
//  Sober Score 1002
//
//  Created by Da/Users/dannysolomon/Desktop/Sober-Score/Sober Score 1002/HomeViewController.swiftniel Solomon on 11/29/18.
//  Copyright © 2018 Quinn Perini. All rights reserved.
//

import UIKit

class DotGameViewController: UIViewController {
    
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var button: UIButton!
    
    var reflex = Timer()
    var scoreTimer = Timer()
    
    var timerInt = 0
    var scoreInt = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoreInt = 0
        counterLabel.text = String(scoreInt)
        
        timerInt = Int(arc4random_uniform(4) + 1);
        
        reflex = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(DotGameViewController.updateCounter), userInfo: nil, repeats: true)
        
        if(timerInt == 0) {
            // Find the button's width and height
            let buttonWidth = button.frame.width
            let buttonHeight = button.frame.height
            
            // Find the width and height of the enclosing view
            let viewWidth = button.superview!.bounds.width
            let viewHeight = button.superview!.bounds.height
            
            // Compute width and height of the area to contain the button's center
            let xwidth = viewWidth - buttonWidth
            let yheight = viewHeight - buttonHeight
            
            // Generate a random x and y offset
            let xoffset = CGFloat(arc4random_uniform(UInt32(xwidth)))
            let yoffset = CGFloat(arc4random_uniform(UInt32(yheight)))
            
            // Offset the button's center by the random offsets.
            button.center.x = xoffset + buttonWidth / 2
            button.center.y = yoffset + buttonHeight / 2
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func stop(_ sender: Any) {
        if(scoreInt != 0) {
            scoreTimer.invalidate()
        }
        
    }
    
    @objc func updateCounter() {
        timerInt -= 1
        if timerInt == 0 {
            reflex.invalidate()
            
            scoreTimer = Timer.scheduledTimer(timeInterval: 0.0001, target: self, selector: #selector(DotGameViewController.updateScoreTimer), userInfo: nil, repeats: true)
        }
    }
    
    @objc func updateScoreTimer() {
        scoreInt += 1
        counterLabel.text = String(scoreInt)
    }
    
    
}

