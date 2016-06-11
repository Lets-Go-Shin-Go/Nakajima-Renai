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
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // セルに表示するテキスト
    let texts = ["ミッション1", "ミッション2", "ミッション3"]
    
    
    // セルの行数
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return texts.count
    }
    
    
    //セルの内容を変更
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = texts[indexPath.row]
        return cell
    }
    
    //セルをタップ
    func tableView(table: UITableView, didSelectRowAtIndexPath indexPath:NSIndexPath) {
        
        //画面遷移
        let storyboard = UIStoryboard(name: "MissionDetailViewController", bundle: NSBundle.mainBundle())
        let appInfoViewController: MissionDetailViewController = storyboard.instantiateViewControllerWithIdentifier("missiondetail") as! MissionDetailViewController
        self.navigationController?.pushViewController(appInfoViewController, animated: true)
        
        //詳細画面に表示させる内容を選択
        var selectedText: String
        selectedText = texts[indexPath.row]
        NSLog("%@", selectedText)
        
        switch selectedText {
        case "ミッション1":
            appInfoViewController.text = "ミッション1"
        case "ミッション2":
            appInfoViewController.text = "ミッション2"
        case "ミッション3":
            appInfoViewController.text = "ミッション3"
        default:
            break // do nothing
        }
       
        
        
    }
}
