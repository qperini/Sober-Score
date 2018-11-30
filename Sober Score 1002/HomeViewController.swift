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
    
    @IBOutlet weak var PageControl: UIPageControl!
    
    var images: [String] = ["0","1","2"]
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        PageControl.numberOfPages = images.co
            images.count
        for index in 0..<images.count {
            frame.origin.x = scroll
        }
        
        print("Home Loaded")
        
    }
    
    @IBAction func TakeTest(_ sender: Any) {
        print("TAKE TEST")
        self.performSegue(withIdentifier: "StartTestArrow", sender: self)
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

