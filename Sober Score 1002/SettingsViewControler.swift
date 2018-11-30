//
//  SettingsViewControler.swift
//  Sober Score 1002
//
//  Created by Quinn Perini on 11/29/18.
//  Copyright © 2018 Quinn Perini. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var SettingsHomeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("Settings Loaded")
    }
    
    @IBAction func SettingsHomeButton(_ sender: Any) {
        self.performSegue(withIdentifier: "SettingsHomeArrow", sender: self)
    }
    
}
