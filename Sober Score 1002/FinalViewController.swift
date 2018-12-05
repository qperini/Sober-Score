//
//  FinalViewController.swift
//  Sober Score 1002
//
//  Created by Daniel Solomon on 12/4/18.
//  Copyright © 2018 Quinn Perini. All rights reserved.
//

import UIKit

class FinalViewController: UIViewController {

    var counter5 = 0
    
    @IBOutlet weak var score: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        score.text = String(counter5)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
