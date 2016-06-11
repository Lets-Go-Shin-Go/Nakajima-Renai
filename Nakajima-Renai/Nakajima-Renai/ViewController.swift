//
//  ViewController.swift
//  Nakajima-Renai
//
//  Created by Yuto Kumagai on 2016/06/11.
//  Copyright © 2016年 Let'sGoShinGo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.title = "Home"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func menuButton(sender: AnyObject) {
        let storyboard = UIStoryboard(name: "MenuViewController", bundle: NSBundle.mainBundle())
        let appInfoViewController: MenuViewController = storyboard.instantiateViewControllerWithIdentifier("menu") as! MenuViewController
        self.navigationController?.pushViewController(appInfoViewController, animated: true)
    }

}

