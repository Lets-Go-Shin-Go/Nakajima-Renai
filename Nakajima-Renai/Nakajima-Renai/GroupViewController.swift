//
//  GroupViewController.swift
//  Nakajima-Renai
//
//  Created by 佐藤孝大 on 2016/06/11.
//  Copyright © 2016年 Let'sGoShinGo. All rights reserved.
//

import UIKit
    
class GroupViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableview: UITableView!
    
    let missionTime = ["9:00", "10:00", "11:00", "12:00"]
    let partnerName = ["中","熊谷","佐藤","新保"]
    let yourName = ["皀"]
    let groupName = ["A","B","C","D"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "グループ"
        
        self.setupLinks()  // Link情報を読み込んで変数に設定
        
        tableview.delegate = self
        tableview.dataSource = self
        
        //iOS8でtalbeviewの区切り線が左端まで表示されるようにする
        if self.tableview.respondsToSelector("separatorInset") {
            self.tableview.separatorInset = UIEdgeInsetsZero;
        }
        
        if self.tableview.respondsToSelector("layoutMargins") {
            self.tableview.layoutMargins = UIEdgeInsetsZero
        }
        
    }
    
    //スクロールバーをフラッシュ表示
    override func viewDidAppear(animated: Bool) {
        tableview.flashScrollIndicators()
    }
    
    override func viewWillAppear(animated: Bool) {
        if let indexPath = tableview.indexPathForSelectedRow {
            tableview.deselectRowAtIndexPath(indexPath, animated: true) //セルの選択状態を初期化する
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var links = [GroupListLink]() // Linkの情報をまとめる配列
    
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
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // IdentifierがLinkViewCellのセルを使いまわす
        let cell: GroupListCustomCell = tableView.dequeueReusableCellWithIdentifier("cell")! as! GroupListCustomCell
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
        
        return cell
    }
    
    
    
    // linksの設定
    func setupLinks() {
        
        for i in 0..<missionTime.count {
            let ll = GroupListLink(
                
                missionTime: missionTime[i],
                partnerName: partnerName[i],
                yourName:    yourName[0],
                groupName:   groupName[i]
            )
            
            links.append(ll)
        }
        
    }
    
}