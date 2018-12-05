//
//  SelectImageViewController.swift
//  Sober Score 1002
//
//  Created by Quinn Perini on 11/30/18.
//  Copyright © 2018 Quinn Perini. All rights reserved.
//

import UIKit

class SelectImageViewController: UIViewController {

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    
    @IBOutlet weak var TopLeft: UIImageView!
    @IBOutlet weak var TopRight: UIImageView!
    @IBOutlet weak var BottomLeft: UIImageView!
    @IBOutlet weak var BottomRight: UIImageView!
    
    var Used = [String]()
    var Images = [String]()
    var IIQ = [String]()
    
    var answer = 0
    var counter = 0
    var plus = 0
    var Q1 = 0
    var Q2 = 0
    var Q3 = 0
    var Q4 = 0
    
    //    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    //    {
    //        if segue.destination is SingleImageViewController
    //        {
    //            let vc = segue.destination as? SingleImageViewController
    //            vc?.ImageTransfer = ""
    //        }
    //    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questions()
    }
    
    func questions() {
        answer = Int (arc4random_uniform(4))
        if answer == 1 {
            TopLeft.image = UIImage(named: Used[0])
            IIQ.append(Used[0])
            Q2 = Int (arc4random_uniform(16))
            Q3 = Int (arc4random_uniform(16))
            Q4 = Int (arc4random_uniform(16))
            if !(IIQ.contains(Images[Q2])){
                TopRight.image = UIImage(named: Images[Q2])
                IIQ.append(Images[Q2])
            }
            if !(IIQ.contains(Images[Q3])){
                BottomLeft.image = UIImage(named: Images[Q3])
                IIQ.append(Images[Q3])
            }
            if !(IIQ.contains(Images[Q4])){
                BottomRight.image = UIImage(named: Images[Q4])
                IIQ.append(Images[Q4])
            }
            if IIQ.count < 4 {
                questions()
            }
        } else if answer == 2 {
            TopRight.image = UIImage(named: Used[0])
            IIQ.append(Used[0])
            Q1 = Int (arc4random_uniform(16))
            Q3 = Int (arc4random_uniform(16))
            Q4 = Int (arc4random_uniform(16))
            if !(IIQ.contains(Images[Q1])){
                TopLeft.image = UIImage(named: Images[Q1])
                IIQ.append(Images[Q1])
            }
            if !(IIQ.contains(Images[Q3])){
                BottomLeft.image = UIImage(named: Images[Q3])
                IIQ.append(Images[Q3])
            }
            if !(IIQ.contains(Images[Q4])){
                BottomRight.image = UIImage(named: Images[Q4])
                IIQ.append(Images[Q4])
            }
            if IIQ.count < 4 {
                questions()
            }
        } else if answer == 3 {
            BottomLeft.image = UIImage(named: Used[0])
            IIQ.append(Used[0])
            Q1 = Int (arc4random_uniform(16))
            Q2 = Int (arc4random_uniform(16))
            Q4 = Int (arc4random_uniform(16))
            if !(IIQ.contains(Images[Q1])){
                TopRight.image = UIImage(named: Images[Q1])
                IIQ.append(Images[Q1])
            }
            if !(IIQ.contains(Images[Q2])){
                TopLeft.image = UIImage(named: Images[Q2])
                IIQ.append(Images[Q2])
            }
            if !(IIQ.contains(Images[Q4])){
                BottomRight.image = UIImage(named: Images[Q4])
                IIQ.append(Images[Q4])
            }
            if IIQ.count < 4 {
                questions()
            }
        } else {
            BottomRight.image = UIImage(named: Used[0])
            IIQ.append(Used[0])
            Q1 = Int (arc4random_uniform(16))
            Q2 = Int (arc4random_uniform(16))
            Q3 = Int (arc4random_uniform(16))
            if !(IIQ.contains(Images[Q1])){
                TopRight.image = UIImage(named: Images[Q1])
                IIQ.append(Images[Q1])
            }
            if !(IIQ.contains(Images[Q2])){
                BottomLeft.image = UIImage(named: Images[Q2])
                IIQ.append(Images[Q2])
            }
            if !(IIQ.contains(Images[Q3])){
                TopLeft.image = UIImage(named: Images[Q3])
                IIQ.append(Images[Q3])
            }
            if IIQ.count < 4 {
                questions()
            }
        }
    }

   
   
    @IBAction func topLeft(_ sender: UIButton) {
        if answer == 1 {
            counter += 1
        } else {
            counter -= 1
        }
        print(counter)
    }
    
    @IBAction func topRight(_ sender: UIButton) {
        if answer == 2 {
            counter += 1
        } else {
            counter -= 1
        }
        print(counter)
    }
    
    @IBAction func bottomLeft(_ sender: UIButton) {
        if answer == 3 {
            counter += 1
        } else {
            counter -= 1
        }
        print(counter)
    }
    
    @IBAction func buttonRight(_ sender: UIButton) {
        if answer == 4 {
            counter += 1
        } else {
            counter -= 1
        }
        print(counter)
    }
}
