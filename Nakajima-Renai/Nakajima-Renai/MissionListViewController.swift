//
//  MissionListViewController.swift
//  Nakajima-Renai
//
//  Created by codepro on 2016/06/11.
//  Copyright © 2016年 Let'sGoShinGo. All rights reserved.
//

import UIKit

class MissionListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.title = "ミッション"
        tableView.delegate = self
        tableView.dataSource = self
        
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated) // No need for semicolon
        
        self.tableView.reloadData()
        
        tableView.rowHeight = 80

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // セルに表示するテキスト
    let texts = ["豆腐屋が作るコロッケを食べよう", "お寿司を食べながら互いのことを話そう", "体を動かしてアピールしよう","共通する好きな曲を探そう"]
    
    /*//チェックをつけるか判断する
    var checkmark = [0,0,0,0,0,0,0,0,0]*/
    
    let appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    
    
    // セルの行数
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return texts.count
    }
    
    
    //セルの内容を変更
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Cell")
        
        cell.textLabel?.font = UIFont(name: "Arial",size:17)
        cell.textLabel?.text = texts[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        if(appDelegate.checkmark[indexPath.row]==1){
            cell.accessoryType = UITableViewCellAccessoryType.Checkmark
        }
        
        return cell
    }
    
    //セルをタップ
    func tableView(table: UITableView, didSelectRowAtIndexPath indexPath:NSIndexPath) {
        
        //画面遷移
        let storyboard = UIStoryboard(name: "MissionDetailViewController", bundle: NSBundle.mainBundle())
        let appInfoViewController: MissionDetailViewController = storyboard.instantiateViewControllerWithIdentifier("missiondetail") as! MissionDetailViewController
        self.navigationController?.pushViewController(appInfoViewController, animated: true)
        
        //詳細画面に表示させる内容を選択
        
        
        switch indexPath.row {
        case 0:
            appInfoViewController.text = texts[0]
            appInfoViewController.checkmark = indexPath.row
        case 1:
            appInfoViewController.text = texts[1]
            appInfoViewController.checkmark = indexPath.row
        case 2:
            appInfoViewController.text = texts[2]
            appInfoViewController.checkmark = indexPath.row
        case 3:
            appInfoViewController.text = texts[3]
            appInfoViewController.checkmark = indexPath.row
        default:
            break // do nothing
        }
        
        
        
    }
}
