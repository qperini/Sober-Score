//
//  HistoryViewControler.swift
//  Sober Score 1002
//
//  Created by Quinn Perini on 11/29/18.
//  Copyright © 2018 Quinn Perini. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController {
    
    @IBOutlet weak var HistoryHome: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("History Loaded")
    }
    
    @IBAction func HistoryHome(_ sender: Any) {
        self.performSegue(withIdentifier: "HistoryHomeArrow", sender: self)
    }
}
