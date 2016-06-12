//
//  GroupListLink.swift
//  Nakajima-Renai
//
//  Created by 新保遥平 on 2016/06/12.
//  Copyright © 2016年 Let'sGoShinGo. All rights reserved.
//

import Foundation

class GroupListLink : NSObject {
    var missionTime:String
    var partnerName:String
    var yourName:String
    var groupName:String
    
    init(missionTime: String, partnerName: String, yourName: String, groupName: String
        ){
            self.missionTime = missionTime
            self.partnerName = partnerName
            self.yourName = yourName
            self.groupName = groupName
            
}
}