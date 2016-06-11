//
//  ViewController.swift
//  Nakajima-Renai
//
//  Created by Yuto Kumagai on 2016/06/11.
//  Copyright © 2016年 Let'sGoShinGo. All rights reserved./Volumes/RAPPY
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //ナビゲーションバーを非表示にする
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        //タイトルの設定（一応）
        self.title = "Title"
        
        //背景画像の設定
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "nakajima_TitleBackImage.png")?.drawInRect(self.view.bounds)
        let image: UIImage! = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.view.backgroundColor = UIColor(patternImage: image)
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated) // No need for semicolon
        
        //ナビゲーションバーを非表示にする
        self.navigationController?.setNavigationBarHidden(true, animated: true)
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

