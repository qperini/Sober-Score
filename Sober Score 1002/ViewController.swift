//
//  ViewController.swift
//  textmom
//
//  Created by james rogers on 11/30/18.
//  Copyright © 2018 James Rogers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var mom: UILabel!
    @IBOutlet weak var userinput: UITextField!
    @IBOutlet weak var score: UILabel!
    
    var scoreCounter2 = 0
    var ranInt = 0
    var texts = [String]()
    var input = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Text Loaded")
        let scoreC = String(scoreCounter2)
        score.text = scoreC
        userinput.autocorrectionType = .no
        texts = ["I'll be home soon.", "Sorry I'm super late.", "I'm not that drunk.", "I've been at church."]
        ranInt = Int (arc4random_uniform(4))
        mom.text = texts[ranInt]
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(20), execute: {
            self.userinput.isUserInteractionEnabled = false
            var _: String = self.userinput.text!
            self.performSegue(withIdentifier: "3-4Arrow", sender: self)
        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func compare (a:String, b:String) {
        if a != b {
            scoreCounter2 += 1
        }
    }
    
    @IBAction func send(_ sender: Any) {
        self.performSegue(withIdentifier: "3-4Arrow", sender: self)
        userinput.text = input
        compare(a: texts[ranInt], b: input)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! SingleImageViewController
        vc.scoreCounter3 = self.scoreCounter2
    }
    
}

