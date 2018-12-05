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
    
    let ImageNames = ["Image1-1","Image1-2","Image1-3","Image1-4", "Image2-1","Image2-2","Image2-3","Image2-4", "Image3-1", "Image3-2", "Image3-3", "Image3-4", "Image4-1", "Image4-2","Image4-3","Image4-4"]
    
    var ImagesUsed = [String]()
    
    var ImageTransfer:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Image Loaded")
        
        // Randonly Generates an Image from the array decalred above
        let leftNumber:Int = Int (arc4random_uniform(16))
        SingleImage.image = UIImage (named: ImageNames[leftNumber])
        ImagesUsed.append(ImageNames[leftNumber])
        
        //Should Transfer the Image name to the array of images at the end
        ImageTransfer = ImageNames[leftNumber]
        
        // AUTOMATICALLY goes to next View Controller
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3)) {
            self.performSegue(withIdentifier: "ImageToImages", sender: self)
        }
        
        self.performSegue(withIdentifier: "toPhotos", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! SelectImageViewController
        vc.Used = self.ImagesUsed
        vc.Images = self.ImageNames
        }

    
}
