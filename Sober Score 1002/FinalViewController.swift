//
//  FinalViewController.swift
//  Sober Score 1002
//
//  Created by Daniel Solomon on 12/4/18.
//  Copyright © 2018 Quinn Perini. All rights reserved.
//

import UIKit

class FinalViewController: UIViewController {
    @IBOutlet weak var HomeButton: UIButton!
    
    @IBOutlet weak var ScoreCan: UIImageView!
    
    var convertedScore = 1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        if convertedScore == 1 {
            ScoreCan.image = UIImage(named: "Level1")
        }
        if convertedScore == 2 {
            ScoreCan.image = UIImage(named: "Level2")
        }
        if convertedScore == 3 {
            ScoreCan.image = UIImage(named: "Level3")
        }
        if convertedScore == 4 {
            ScoreCan.image = UIImage(named: "Level4")
        }
        if convertedScore == 5 {
            ScoreCan.image = UIImage(named: "Level5")
        }
        if convertedScore == 6 {
            ScoreCan.image = UIImage(named: "Level6")
        }
        if convertedScore == 7 {
            ScoreCan.image = UIImage(named: "Level7")
        }
        if convertedScore == 8 {
            ScoreCan.image = UIImage(named: "Level8")
        }
        if convertedScore == 9 {
            ScoreCan.image = UIImage(named: "Level9")
        }
        if convertedScore == 10 {
            ScoreCan.image = UIImage(named: "Level0")
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func HomeButton(_ sender: Any) {
        self.performSegue(withIdentifier: "ScoreToHome", sender: self)
    }
    

}
