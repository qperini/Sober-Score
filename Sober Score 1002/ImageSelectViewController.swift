//
//  ImageSelectViewController.swift
//  Sober Score 1002
//
//  Created by Quinn Perini on 11/30/18.
//  Copyright © 2018 Quinn Perini. All rights reserved.
//

import UIKit

class ImageSelectViewController: UIPageViewController {

    @IBOutlet weak var TopLeftImage: UIImageView!
    @IBOutlet weak var TopRightImage: UIImageView!
    @IBOutlet weak var BottomLeftImage: UIImageView!
    @IBOutlet weak var BottomRightImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.destination is SingleImageViewController
        {
            let vc = segue.destination as? SingleImageViewController
            print(vc?.ImageTransfer as Any)
        }
    }

}
