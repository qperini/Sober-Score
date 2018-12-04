//
//  WordListViewController.swift
//  Sober Score 1002
//
//  Created by Daniel Solomon on 11/30/18.
//  Copyright © 2018 Quinn Perini. All rights reserved.
//

import UIKit

class WordListViewController: UIViewController {
    
    @IBOutlet weak var subButt: UIButton!
    
    @IBOutlet weak var word1: UILabel!
    @IBOutlet weak var word2: UILabel!
    @IBOutlet weak var word3: UILabel!
    @IBOutlet weak var word4: UILabel!
    @IBOutlet weak var word5: UILabel!
    
    @IBOutlet weak var answer1: UITextField!
    @IBOutlet weak var answer2: UITextField!
    @IBOutlet weak var answer5: UITextField!
    @IBOutlet weak var answer4: UITextField!
    @IBOutlet weak var answer3: UITextField!
   
    var w1 = ""
    var w2 = ""
    var w3 = ""
    var w4 = ""
    var w5 = ""
    
    var counter = 0
    
    var Words = [String]()
    var Used = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func submit(_ sender: UIButton) {
        w1 = answer1.text!
        w2 = answer2.text!
        w3 = answer3.text!
        w4 = answer4.text!
        w5 = answer5.text!
        
        if Words.contains(w1) && !(Used.contains(w1)){
            counter += 1
        }
        if Words.contains(w2) && !(Used.contains(w2)){
            counter += 1
        }
        if Words.contains(w3) && !(Used.contains(w3)){
            counter += 1
        }
        if Words.contains(w4) && !(Used.contains(w4)){
            counter += 1
        }
        if Words.contains(w5) && !(Used.contains(w5)){
            counter += 1
        }
        
        if Words.contains(w1){
            Used.append(w1)
        }
        if Words.contains(w2){
            Used.append(w2)
        }
        if Words.contains(w3){
            Used.append(w3)
        }
        if Words.contains(w4){
            Used.append(w4)
        }
        if Words.contains(w5){
            Used.append(w5)
        }
        print(counter)
    }
}
