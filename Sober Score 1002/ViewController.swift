//
//  ViewController.swift
//  Sober Score 1002
//
//  Created by Quinn Perini on 11/27/18.
//  Copyright © 2018 Quinn Perini. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TakeTest: UIButton!
    
    @IBOutlet weak var History: UIButton!
    
    @IBOutlet weak var Settings: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func TakeTest(_ sender: Any) {
        print("TAKE TEST")
    }
    
    @IBAction func History(_ sender: Any) {
        print("HISTORY")
    }
    
    @IBAction func Settings(_ sender: Any) {
        print("SETTINGS")
    }
}

