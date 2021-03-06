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
    
    var scoreInt = 0
    
    var cBut = 0
    
    var scoreCounter1 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Button Loaded")
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
        
        scoreInt = 0
        counterLabel.text = String(scoreInt)
        
        scoreTimer = Timer.scheduledTimer(timeInterval: 0.0001, target: self, selector: #selector(DotGameViewController.updateScoreTimer), userInfo: nil, repeats: true)
       
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func stop(_ sender: Any) {
        if (scoreInt != 0) && (cBut >= 5) {
            scoreTimer.invalidate()
            self.button.isHidden = true
            if scoreInt > 1000 {
                scoreCounter1 += 4
            }
            self.performSegue(withIdentifier: "2-3Arrow", sender: self)
        }
        if (scoreInt != 0) {
             cBut += 1
            
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
    
    @objc func updateScoreTimer() {
        scoreInt += 1
        counterLabel.text = String(scoreInt)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ViewController
        vc.scoreCounter2 = self.scoreCounter1
    }
}

