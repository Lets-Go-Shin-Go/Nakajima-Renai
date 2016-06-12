//
//  GroupListCustomCell.swift
//  Nakajima-Renai
//
//  Created by 新保遥平 on 2016/06/12.
//  Copyright © 2016年 Let'sGoShinGo. All rights reserved.
//

import UIKit

class GroupListCustomCell: UITableViewCell{
  
    @IBOutlet weak var missionTime: UILabel!
    
    @IBOutlet weak var groupName: UILabel!
    
    @IBOutlet weak var partnerName: UILabel!
    
    @IBOutlet weak var yourName: UILabel!
    
    func setCell(link: GroupListLink) {
        self.missionTime.text = link.missionTime
         self.partnerName.text = link.partnerName
         self.yourName.text = link.yourName
         self.groupName.text = link.groupName
        
      
    }
}
