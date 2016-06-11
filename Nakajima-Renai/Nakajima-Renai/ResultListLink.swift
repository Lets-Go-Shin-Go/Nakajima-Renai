//
//  ResultListLink.swift
//  Nakajima-Renai
//
//  Created by Yuto Kumagai on 2016/06/11.
//  Copyright © 2016年 Let'sGoShinGo. All rights reserved.
//

import Foundation

class ResultListLink : NSObject {
    var picName:String?
    var userName:String
    
    init(picName: String, userName: String){
        self.picName = picName
        self.userName = userName
    }
}