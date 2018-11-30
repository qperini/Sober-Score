//
//  PageViewController.swift
//  Sober Score 1002
//
//  Created by Quinn Perini on 11/29/18.
//  Copyright © 2018 Quinn Perini. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource {

    var orderedViewControllers: [UIViewController] {
        return [self.newVc(viewController: HistoryViewController), self.newVc(viewController: HomeViewController), , self.newVc(viewController: SettingsViewController)]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func newVc(viewController: String) -> UIViewController {
        return UIStoryboard(name: "main", bundle: nil).instantiateViewController(withIdentifier:)
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
