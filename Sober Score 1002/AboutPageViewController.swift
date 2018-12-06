//
//  AboutPageViewController.swift
//  Sober Score 1002
//
//  Created by Quinn Perini on 12/6/18.
//  Copyright © 2018 Quinn Perini. All rights reserved.
//

import UIKit

class AboutPageViewController: UIViewController {

    @IBOutlet weak var BackToSettings: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("About Loaded")
        // Do any additional setup after loading the view.
    }
    
    @IBAction func BackToSettings(_ sender: Any) {
        self.performSegue(withIdentifier: "AboutSettingsArrow", sender: self)
    }

}
