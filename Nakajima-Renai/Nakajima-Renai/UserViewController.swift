//
//  UserViewController.swift
//  Nakajima-Renai
//
//  Created by 佐藤孝大 on 2016/06/11.
//  Copyright © 2016年 Let'sGoShinGo. All rights reserved.
//

import UIKit

class UserViewController: UIViewController {
    
    @IBOutlet weak var mainPic: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var name2: UILabel!
    @IBOutlet weak var age: UILabel!
    @IBOutlet weak var hobby: UILabel!
    
    @IBOutlet weak var heart: UIImageView!
    @IBOutlet weak var heartBtn: UIButton!
    
    var ID = -1
    
    let pic:[String] = ["kumagai_d.png","yohei_d.png","singo_d.png","kodai_d.png","morosan_d.png"]
    let userName: [String] = ["熊谷優斗","新保遥平","中進吾","佐藤孝大","諸原聖"]
    let nickname: [String] = ["くま","しんぽ","リーゼントくん","こーだい","もろちゃん"]
    let Age: [String] = ["22","22","21","21","23"]
    let Hobby: [String] = ["ラットプルダウン","合コン","家庭菜園","ゲーム","秘密"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //タイトルの設定（一応）
        self.title = ""
        
        heart.image = UIImage(named: "heart_off.png")
        
        heartBtn.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        
        self.view.addSubview(heartBtn)
        
    }
    
    
    internal func onClickMyButton(sender: UIButton){
        heartBtn.selected = !heartBtn.selected
        if heartBtn.selected{
            heart.image = UIImage(named: "heart_on.png")
        }else{
            heart.image = UIImage(named: "heart_off.png")
        }
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated) // No need for semicolon
        
        if ID < 5 && ID >= 0{
            mainPic.image = UIImage(named: pic[ID])
            name.text = userName[ID]
            name2.text = nickname[ID]
            age.text = Age[ID]
            hobby.text = Hobby[ID]
        }
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

