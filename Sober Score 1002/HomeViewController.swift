//
//  ViewController.swift
//  Sober Score 1002
//
//  Created by Quinn Perini on 11/27/18.
//  Copyright © 2018 Quinn Perini. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var TakeTest: UIButton!
    
    @IBOutlet weak var History: UIButton!
    
    @IBOutlet weak var Settings: UIButton!
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("Home Loaded")
        
    }
    
    @IBAction func TakeTest(_ sender: Any) {
        print("TAKE TEST")
        let alert = UIAlertController(title: "Affirmation of Age", message: "You must be 21 years of age or older to consume alcohol in the US.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel) { (action:UIAlertAction!) in
            self.performSegue(withIdentifier: "StartTestArrow", sender: self)
        })
        
        self.present(alert, animated: true)
    }
    
    @IBAction func History(_ sender: Any) {
        print("HISTORY")
        self.performSegue(withIdentifier: "HistoryArrow", sender: self)
    }
    
    @IBAction func Settings(_ sender: Any) {
        print("SETTINGS")
        self.performSegue(withIdentifier: "SettingsArrow", sender: self)
    }
}

