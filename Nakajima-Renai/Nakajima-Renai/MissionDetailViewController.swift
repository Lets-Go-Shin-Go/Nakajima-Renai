//
//  MissionDetailViewController.swift
//  Nakajima-Renai
//
//  Created by codepro on 2016/06/11.
//  Copyright © 2016年 Let'sGoShinGo. All rights reserved.
//

import UIKit

class MissionDetailViewController: UIViewController {
    
    @IBOutlet weak var content: UILabel!
    var text : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        content.text = text
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}