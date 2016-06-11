//
//  FavoriteViewController.swift
//  Nakajima-Renai
//
//  Created by 佐藤孝大 on 2016/06/11.
//  Copyright © 2016年 Let'sGoShinGo. All rights reserved.
//

import UIKit

// UITableViewDelegate, UITableViewDataSourceを追加
class FavoriteViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    let picName: [String] = ["kumagai.png","yohei.png","singo.png","kodai.png","morosan.png"]
    let userName: [String] = ["熊谷優斗","新保遥平","中進吾","佐藤孝大","諸原聖"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "評価"
        
        self.setupLinks()  // Link情報を読み込んで変数に設定
        
        tableView.delegate = self
        tableView.dataSource = self
        
        //iOS8でtalbeviewの区切り線が左端まで表示されるようにする
        if self.tableView.respondsToSelector("separatorInset") {
            self.tableView.separatorInset = UIEdgeInsetsZero;
        }
        
        if self.tableView.respondsToSelector("layoutMargins") {
            self.tableView.layoutMargins = UIEdgeInsetsZero
        }
        
    }
    
    //スクロールバーをフラッシュ表示
    override func viewDidAppear(animated: Bool) {
        tableView.flashScrollIndicators()
    }
    
    override func viewWillAppear(animated: Bool) {
        if let indexPath = tableView.indexPathForSelectedRow {
            tableView.deselectRowAtIndexPath(indexPath, animated: true) //セルの選択状態を初期化する
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var links = [Link]() // Linkの情報をまとめる配列
    
    //cellの高さ指定
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 80
    }
    
    /*
    
    Cellの総数を返す
    
    */
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return links.count // link数に変更
    }
    
    /*
    
    Cellが選択された際に呼び出される
    
    */
    
    func tableView(table: UITableView, didSelectRowAtIndexPath indexPath:NSIndexPath) {
        print("Num: \(indexPath.row)")
        let storyboard = UIStoryboard(name: "UserViewController", bundle: NSBundle.mainBundle())
        let userViewController: UserViewController = storyboard.instantiateViewControllerWithIdentifier("user") as! UserViewController
        
        userViewController.ID = indexPath.row
        
        self.navigationController?.pushViewController(userViewController, animated: true)
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // IdentifierがLinkViewCellのセルを使いまわす
        let cell: FavoriteCustomCell = tableView.dequeueReusableCellWithIdentifier("cell")! as! FavoriteCustomCell
        // cellの内容を設定
        cell.setCell(links[indexPath.row])
        
        //iOS8でtalbeviewの区切り線が左端まで表示されるようにする
        if cell.respondsToSelector("separatorInset") {
            cell.separatorInset = UIEdgeInsetsZero;
        }
        
        if cell.respondsToSelector("preservesSuperviewLayoutMargins") {
            cell.preservesSuperviewLayoutMargins = false
        }
        
        if cell.respondsToSelector("layoutMargins") {
            cell.layoutMargins = UIEdgeInsetsZero
        }
        
        // 選択された時の背景色
        let cellSelectedBgView = UIView()
        cellSelectedBgView.backgroundColor = UIColor(red: 1, green: 0.9, blue: 0.9, alpha: 1)
        cell.selectedBackgroundView = cellSelectedBgView
        
        return cell
    }
    
    // linksの設定
    func setupLinks() {
        
        for i in 0..<userName.count {
            let ll = Link(picName: picName[i], userName: userName[i])
            links.append(ll)
        }
    }
}
