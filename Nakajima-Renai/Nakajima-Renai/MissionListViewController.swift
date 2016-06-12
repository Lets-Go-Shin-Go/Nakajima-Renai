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

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // セルに表示するテキスト
    let texts = ["ミッション1", "ミッション2", "ミッション3","ミッション4", "ミッション5", "ミッション6","ミッション7", "ミッション8", "ミッション9"]
    
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
        
        cell.textLabel?.font = UIFont(name: "Arial",size:40)
        cell.textLabel?.text = texts[indexPath.row]
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
            appInfoViewController.text = "ミッション1"
            appInfoViewController.checkmark = indexPath.row
        case 1:
            appInfoViewController.text = "ミッション2"
            appInfoViewController.checkmark = indexPath.row
        case 2:
            appInfoViewController.text = "ミッション3"
            appInfoViewController.checkmark = indexPath.row
        case 3:
            appInfoViewController.text = "ミッション4"
            appInfoViewController.checkmark = indexPath.row
        case 4:
            appInfoViewController.text = "ミッション5"
            appInfoViewController.checkmark = indexPath.row
        case 5:
            appInfoViewController.text = "ミッション6"
            appInfoViewController.checkmark = indexPath.row
        case 6:
            appInfoViewController.text = "ミッション7"
            appInfoViewController.checkmark = indexPath.row
        case 7:
            appInfoViewController.text = "ミッション8"
            appInfoViewController.checkmark = indexPath.row
        case 8:
            appInfoViewController.text = "ミッション9"
            appInfoViewController.checkmark = indexPath.row
        default:
            break // do nothing
        }
        
        
        
    }
}
