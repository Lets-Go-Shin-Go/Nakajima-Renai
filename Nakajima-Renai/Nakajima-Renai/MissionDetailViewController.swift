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
    @IBOutlet weak var imview: UIImageView!
    //@IBOutlet weak var button: UIButton!
    
    
    var text : String?//ミッション名
    var checkmark : Int = 0//配列の場所
    let appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //content.text = "ミッション内容"
        self.title = text
        content.font = UIFont(name: "Arial",size:17)
        
        //サイズ
        
        
        
        //背景画像の設定
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "nakajima_MenuBackImage.png")?.drawInRect(self.view.bounds)
        let image: UIImage! = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.view.backgroundColor = UIColor(patternImage: image)
        
        //それぞれミッションの内容を表示
        switch checkmark {
        case 0:
            let img = UIImage(named:"toufu.jpg")
            //imageView.contentMode = UIViewContentMode.Center
            imview.frame = CGRect(x: 0,y: 0,width: img!.size.width,height: img!.size.height)
            imview.image = img
            //説明文
            content.text = "堂守豆腐店でオカラコロッケを買い、お互いの子供の頃のことを話せ"
        case 1:
            let img = UIImage(named:"sushi.jpg")
            imview.frame = CGRect(x: 0,y: 0,width: img!.size.width,height: img!.size.height)
            imview.image = img
            //説明文
            content.text = "シゲちゃん寿司で寿司を食べながら、お互いの家族のことについて話せ"
        case 2:
            let img = UIImage(named:"dance.jpg")
            imview.frame = CGRect(x: 0,y: 0,width: img!.size.width,height: img!.size.height)
            imview.image = img
            //説明文
            content.text = "中島れんばいふれあいセンターに行き、二人で一緒にソーラン節を踊れ"
        case 3:
            let img = UIImage(named:"center.jpg")
            imview.frame = CGRect(x: 0,y: 0,width: img!.size.width,height: img!.size.height)
            imview.image = img
            //説明文
            content.text = "中島れんばいふれあいセンターに行き、お互いに好きな曲を歌え"
        default:
            break // do nothing
        }
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func overcome(sender: AnyObject) {
        /*let storyboard = UIStoryboard(name: "MissionListViewController", bundle: NSBundle.mainBundle())
        let appInfoViewController: MissionListViewController = storyboard.instantiateViewControllerWithIdentifier("missionlist") as! MissionListViewController
        self.navigationController?.pushViewController(appInfoViewController, animated: true)
        
        appInfoViewController.checkmark[checkmark] = 1*/
    
       
        appDelegate.checkmark[checkmark]=1
        navigationController?.popViewControllerAnimated(true)
        
    }
    
    
}