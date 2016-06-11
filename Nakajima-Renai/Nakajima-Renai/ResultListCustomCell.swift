//
//  ResultListCustomCell.swift
//  Nakajima-Renai
//
//  Created by Yuto Kumagai on 2016/06/11.
//  Copyright © 2016年 Let'sGoShinGo. All rights reserved.
//


import UIKit

class ResultListCustomCell: UITableViewCell {
    
    @IBOutlet weak var myPic: UIImageView!
    @IBOutlet weak var userName: UILabel!
    
    func setCell(link: ResultListLink) {
        self.userName.text = link.userName
        
        if let picName = link.picName {

        self.myPic.image = UIImage(named: picName)
        }
    }
}
