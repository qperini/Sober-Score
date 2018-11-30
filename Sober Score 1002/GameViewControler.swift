//
//  GameViewControler.swift
//  Sober Score 1002
//
//  Created by Quinn Perini on 11/29/18.
//  Copyright © 2018 Quinn Perini. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var Next: UIButton!
    @IBOutlet weak var word1: UILabel!
    @IBOutlet weak var word2: UILabel!
    @IBOutlet weak var word3: UILabel!
    @IBOutlet weak var word4: UILabel!
    @IBOutlet weak var word5: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        word1.text = ""
        word2.text = ""
        word3.text = ""
        word4.text = ""
        word5.text = ""
        print("Game Loaded")
    }
    
    
    @IBAction func setWords(_ sender: Any) {
    (sender as? UIButton)?.isEnabled = false
        let words = ["Horse", "Cat", "Dog", "Fish", "Bird", "Orange", "Yellow", "Blue", "Green", "Black", "Table", "Chair", "Desk", "Bookcase", "Bed", "Teacher", "School", "Student", "Homework", "Class", "Apple", "Banana", "Kiwi", "Grape", "Mango"]
        var testWords = Set<String>()
        
        while testWords.count < 5 {
            let randomIndex = Int(arc4random_uniform(UInt32(words.count)))
            testWords.insert(words[randomIndex])
        }
        
        let testwordsArray = Array(testWords)
        word1.text = testwordsArray[0]
        word2.text = testwordsArray[1]
        word3.text = testwordsArray[2]
        word4.text = testwordsArray[3]
        word5.text = testwordsArray[4]
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(30), execute: {
            self.word1.text = ""
            self.word2.text = ""
            self.word3.text = ""
            self.word4.text = ""
            self.word5.text = ""
        })
    }
    
    @IBAction func Next(_ sender: Any) {
        self.performSegue(withIdentifier: "1-2Arrow", sender: self)
    }
    
}
