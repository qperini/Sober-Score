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
    
    var counter2 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userinput.autocorrectionType = .no
        let texts = ["I'll be home soon.", "Sorry I'm super late.", "I'm not that drunk.", "I've been at church."]
        mom.text = texts.randomElement()
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(20), execute: {
            self.userinput.isUserInteractionEnabled = false
            var _: String = self.userinput.text!
            self.performSegue(withIdentifier: "3-4Arroww", sender: nil)
        })
    }
    
    @IBAction func send(_ sender: Any) {
        self.performSegue(withIdentifier: "3-4Arrow", sender: nil)
    }
    
}

