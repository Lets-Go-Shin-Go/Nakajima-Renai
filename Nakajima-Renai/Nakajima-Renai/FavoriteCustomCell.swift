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
    
    @IBOutlet weak var pic2:UIImageView!
    
    func setCell(link: Link) {
        self.userName.text = link.userName
        
        if let picName = link.picName {
            self.pic.image = UIImage(named: picName)
        }
        
        heartButton.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        self.pic2.image = UIImage(named: "heart_off.png")
        
    }
    
    internal func onClickMyButton(sender: UIButton){
        heartButton.selected = !heartButton.selected
        if heartButton.selected{
            self.pic2.image = UIImage(named: "heart_on.png")
        }else{
            self.pic2.image = UIImage(named: "heart_off.png")
        }
    }
}
