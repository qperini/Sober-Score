//
//  SelectImageViewController.swift
//  Sober Score 1002
//
//  Created by Quinn Perini on 11/30/18.
//  Copyright © 2018 Quinn Perini. All rights reserved.
//

import UIKit

class SelectImageViewController: UIViewController {

    @IBOutlet weak var TopLeft: UIImageView!
    @IBOutlet weak var TopRight: UIImageView!
    @IBOutlet weak var BottomLeft: UIImageView!
    @IBOutlet weak var BottomRight: UIImageView!
    
    
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

        print("Images Loaded")
        
        TopLeft.image = UIImage(named: "Image2-3")
        TopRight.image = UIImage(named: "Image2-3")
        BottomLeft.image = UIImage(named: "Image2-3")
        BottomRight.image = UIImage(named: "Image2-3")
        print("Images 2 Loaded")
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
