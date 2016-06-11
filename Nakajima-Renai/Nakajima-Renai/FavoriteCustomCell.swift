//
//  FavoriteCustomCell.swift
//  Nakajima-Renai
//
//  Created by 佐藤孝大 on 2016/06/11.
//  Copyright © 2016年 Let'sGoShinGo. All rights reserved.
//

import UIKit

class FavoriteCustomCell: UITableViewCell {
    @IBOutlet weak var pic:UIImageView!
    @IBOutlet weak var userName:UILabel!
    @IBOutlet weak var heartButton: UIButton!
    
    func setCell(link: Link) {
        self.userName.text = link.userName
        
        if let picName = link.picName {
            // Cellに使用するサムネイル画像のUIImageの生成(非同期読み込み)
            /*
            let url = NSURL(string: picName)
            let req = NSURLRequest(URL:url!)
            */
            //NSURLConnection.sendAsynchronousRequest(req, queue:NSOperationQueue.mainQueue()){(res, data, err) in
            self.pic.image = UIImage(named: picName)
           // }
        }
    }
}
