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
    
    let ImageNames = ["Image1-1", "Image2-1", "Image3-1", "Image4-1"]
    
    var ImageTransfer:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Image Loaded")
        
        // Randonly Generates an Image from the array decalred above
        let leftNumber:Int = Int (arc4random_uniform(4))
        SingleImage.image = UIImage (named: ImageNames[leftNumber])
        
        //Should Transfer the Image name to the array of images at the end
        ImageTransfer = ImageNames[leftNumber]
        
        // AUTOMATICALLY goes to next View Controller
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(4)) {
            self.performSegue(withIdentifier: "ImageToImages", sender: self)
        }
    }


    
}
