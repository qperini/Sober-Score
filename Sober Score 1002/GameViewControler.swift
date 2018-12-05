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
    
    var wordL1 = ""
    var wordL2 = ""
    var wordL3 = ""
    var wordL4 = ""
    var wordL5 = ""
    
    var wordList = [String]()
    
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
        let alert = UIAlertController(title: "Instructions", message: "Answer each question in this test to the best of your ability. If you see a red dot on the screen, tap it as quickly as possible.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel) { (action:UIAlertAction!) in
            let words = ["Horse", "Cat", "Dog", "Fish", "Bird", "Orange", "Yellow", "Blue", "Green", "Black", "Table", "Chair", "Desk", "Bookcase", "Bed", "Teacher", "School", "Student", "Homework", "Class", "Apple", "Banana", "Kiwi", "Grape", "Mango"]
            var testWords = Set<String>()
            
            while testWords.count < 5 {
                let randomIndex = Int(arc4random_uniform(UInt32(words.count)))
                testWords.insert(words[randomIndex])
            }
            
            let testwordsArray = Array(testWords)
            self.wordList.append(testwordsArray[0])
            self.wordList.append(testwordsArray[1])
            self.wordList.append(testwordsArray[2])
            self.wordList.append(testwordsArray[3])
            self.wordList.append(testwordsArray[4])
            self.word1.text = testwordsArray[0]
            self.word2.text = testwordsArray[1]
            self.word3.text = testwordsArray[2]
            self.word4.text = testwordsArray[3]
            self.word5.text = testwordsArray[4]
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(30), execute: {
                self.word1.text = ""
                self.word2.text = ""
                self.word3.text = ""
                self.word4.text = ""
                self.word5.text = ""
            })
        })
        
        self.present(alert, animated: true)
    }
    
    @IBAction func Next(_ sender: Any) {
        self.performSegue(withIdentifier: "1-2Arrow", sender: self)
        performSegue(withIdentifier: "toWords", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier{
        case "toWords":
            let vc = segue.destination as! WordListViewController
            vc.Words = self.wordList
            
        case "1-2Arrow": break
            
        default: break
        }
    }
}
