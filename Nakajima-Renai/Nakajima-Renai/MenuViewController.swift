//
//  MenuViewController.swift
//  Nakajima-Renai
//
//  Created by 佐藤孝大 on 2016/06/11.
//  Copyright © 2016年 Let'sGoShinGo. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    
    //ボタンの生成
    private var GroupBtn: UIButton!
    private var MissionBtn: UIButton!
    private var FavoriteBtn: UIButton!
    private var ResultBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.title = "メニュー"
        
        //背景画像の設定
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "nakajima_MenuBackImage.png")?.drawInRect(self.view.bounds)
        let image: UIImage! = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.view.backgroundColor = UIColor(patternImage: image)
        
        GroupBtn = UIButton()
        MissionBtn = UIButton()
        FavoriteBtn = UIButton()
        ResultBtn = UIButton()
        
        //ボタンの同時押し禁止
        GroupBtn.exclusiveTouch = true
        MissionBtn.exclusiveTouch = true
        FavoriteBtn.exclusiveTouch = true
        ResultBtn.exclusiveTouch = true
        
        //ステータスバーの高さ取得
        let statusBarHeight: CGFloat = UIApplication.sharedApplication().statusBarFrame.height
        //ナビゲーションバーの高さ取得
        let navBarHeight = self.navigationController?.navigationBar.frame.size.height
        //画面上部の領域の高さ
        let headerHeight = statusBarHeight + navBarHeight!
        //スクリーンサイズ取得
        let screenWidth =  UIScreen.mainScreen().bounds.size.width
        let screenHeight = UIScreen.mainScreen().bounds.size.height - headerHeight
        //ボタンの一辺の長さ
        let buttonWidth = screenHeight/3 * 0.88
        //ボタンの配置の微調整に使用
        let BtnMargin:CGFloat = 0
        
        
        //以下、ボタンの設定
        /* --- Group --- */
        //サイズ指定
        GroupBtn.frame = CGRectMake( 0, 0, buttonWidth, buttonWidth)
        //中心位置指定
        GroupBtn.layer.position = CGPoint(x: screenWidth * 1 / 4 + BtnMargin, y: screenHeight * 1 / 6 + headerHeight)
        //背景画像追加
        let GroupImage = UIImage(named: "nakajima_button_group.png") as UIImage!
        GroupBtn.setImage(GroupImage, forState: .Normal)
        //タグ
        GroupBtn.tag = 0
        //ボタンを押した時の処理を追加
        GroupBtn.addTarget(self, action: "onClickButton:", forControlEvents: .TouchUpInside)
        //ボタンに影をつける
        GroupBtn.layer.shadowOffset = CGSizeMake(0.0, 3.0)
        GroupBtn.layer.shadowOpacity = 0.5
        //Viewに追加
        self.view.addSubview(GroupBtn)
        
        /* --- Mission --- */
        //サイズ指定
        MissionBtn.frame = CGRectMake( 0, 0, buttonWidth, buttonWidth)
        //中心位置指定
        MissionBtn.layer.position = CGPoint(x: screenWidth * 3 / 4 - BtnMargin, y: screenHeight * 1 / 6 + headerHeight)
        //背景画像追加
        let MissionImage = UIImage(named: "nakajima_button_mission.png") as UIImage!
        MissionBtn.setImage(MissionImage, forState: .Normal)
        //タグ
        MissionBtn.tag = 1
        //ボタンを押した時の処理を追加
        MissionBtn.addTarget(self, action: "onClickButton:", forControlEvents: .TouchUpInside)
        //ボタンに影をつける
        MissionBtn.layer.shadowOffset = CGSizeMake(0.0, 3.0)
        MissionBtn.layer.shadowOpacity = 0.5
        //Viewに追加
        self.view.addSubview(MissionBtn)

        /* --- Favorite --- */
        //サイズ指定
        FavoriteBtn.frame = CGRectMake( 0, 0, buttonWidth, buttonWidth)
        //中心位置指定
        FavoriteBtn.layer.position = CGPoint(x: screenWidth * 1 / 4 + BtnMargin, y: screenHeight * 3 / 6 + headerHeight)
        //背景画像追加
        let FavoriteImage = UIImage(named: "nakajima_button_favorite.png") as UIImage!
        FavoriteBtn.setImage(FavoriteImage, forState: .Normal)
        //タグ
        FavoriteBtn.tag = 2
        //ボタンを押した時の処理を追加
        FavoriteBtn.addTarget(self, action: "onClickButton:", forControlEvents: .TouchUpInside)
        //ボタンに影をつける
        FavoriteBtn.layer.shadowOffset = CGSizeMake(0.0, 3.0)
        FavoriteBtn.layer.shadowOpacity = 0.5
        //Viewに追加
        self.view.addSubview(FavoriteBtn)
        
        /* --- Result --- */
        //サイズ指定
        ResultBtn.frame = CGRectMake( 0, 0, buttonWidth, buttonWidth)
        //中心位置指定
        ResultBtn.layer.position = CGPoint(x: screenWidth * 3 / 4 - BtnMargin, y: screenHeight * 3 / 6 + headerHeight)
        //背景画像追加
        let ResultImage = UIImage(named: "nakajima_button_result.png") as UIImage!
        ResultBtn.setImage(ResultImage, forState: .Normal)
        //タグ
        ResultBtn.tag = 3
        //ボタンを押した時の処理を追加
        ResultBtn.addTarget(self, action: "onClickButton:", forControlEvents: .TouchUpInside)
        //ボタンに影をつける
        ResultBtn.layer.shadowOffset = CGSizeMake(0.0, 3.0)
        ResultBtn.layer.shadowOpacity = 0.5
        //Viewに追加
        self.view.addSubview(ResultBtn)
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated) // No need for semicolon
        
        //ナビゲーションバーを表示する
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //ボタンの処理（次のビューへ移動）
    internal func onClickButton(sender: UIButton){
        switch sender.tag{
        case 0:
            break
            /*
            //GroupViewへ遷移
            let storyboard = UIStoryboard(name: "GroupViewController", bundle: NSBundle.mainBundle())
            let viewController: GroupViewController = storyboard.instantiateViewControllerWithIdentifier("group") as! GroupViewController
            self.navigationController?.pushViewController(viewController, animated: true)
            */
        case 1:
            //MissionViewへ遷移
            let storyboard = UIStoryboard(name: "MissionListViewController", bundle: NSBundle.mainBundle())
            let viewController: MissionListViewController = storyboard.instantiateViewControllerWithIdentifier("missionlist") as! MissionListViewController
            self.navigationController?.pushViewController(viewController, animated: true)
        case 2:
            //FavoriteViewへ遷移
            let storyboard = UIStoryboard(name: "FavoriteViewController", bundle: NSBundle.mainBundle())
            let viewController: FavoriteViewController = storyboard.instantiateViewControllerWithIdentifier("favorite") as! FavoriteViewController
            self.navigationController?.pushViewController(viewController, animated: true)
        case 3:
            //ResultListViewへ遷移
            let storyboard = UIStoryboard(name: "ResultListViewController", bundle: NSBundle.mainBundle())
            let viewController: ResultListViewController = storyboard.instantiateViewControllerWithIdentifier("resultlist") as! ResultListViewController
            self.navigationController?.pushViewController(viewController, animated: true)
        default:
            break
        }
    }
    
    
}

