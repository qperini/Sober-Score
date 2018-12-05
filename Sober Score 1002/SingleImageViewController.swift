//
//  SingleImageViewController.swift
//  Sober Score 1002
//
//  Created by Quinn Perini on 11/30/18.
//  Copyright © 2018 Quinn Perini. All rights reserved.
//

import UIKit

class SingleImageViewController: UIViewController {
    
    @IBOutlet weak var SingleImage: UIImageView!
    @IBOutlet weak var score: UILabel!
    
    var scoreCounter3 = 0
    
    let ImageNames = ["Image1-1","Image1-2","Image1-3","Image1-4", "Image2-1","Image2-2","Image2-3","Image2-4", "Image3-1", "Image3-2", "Image3-3", "Image3-4", "Image4-1", "Image4-2","Image4-3","Image4-4", "Image5-1", "Image5-2","Image5-3","Image5-4", "Image6-1", "Image6-2","Image6-3","Image6-4", ]
    
    var ImagesUsed = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("long")
        print(scoreCounter3)
        // Randonly Generates an Image from the array decalred above
        let scoreC = String(scoreCounter3)
        score.text = scoreC
        let leftNumber:Int = Int (arc4random_uniform(24))
        SingleImage.image = UIImage (named: ImageNames[leftNumber])
        ImagesUsed.append(ImageNames[leftNumber])
        
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3), execute: {
            self.performSegue(withIdentifier: "toPhotos", sender: self)
        })
        
        performSegue(withIdentifier: "toPhotos", sender: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! SelectImageViewController
        vc.Used = self.ImagesUsed
        vc.Images = self.ImageNames
        vc.scoreCounter4 = self.scoreCounter3
    }
}
