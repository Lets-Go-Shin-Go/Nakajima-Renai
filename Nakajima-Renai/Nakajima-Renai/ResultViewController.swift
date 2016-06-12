//
//  ResultViewController.swift
//  Nakajima-Renai
//
//  Created by 佐藤孝大 on 2016/06/11.
//  Copyright © 2016年 Let'sGoShinGo. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController{
    
    var flag: Int?
    @IBOutlet weak var resultImage: UIImageView!
    
        override func viewDidLoad() {
            if(flag == 0){
                createParticles()
                resultImage.image = UIImage(named: "Congratulations")
                
            }else{
                createUnhappyParticles()
            }
            
        }
        
        func createParticles() {
            let particleEmitter = CAEmitterLayer()
            
            particleEmitter.emitterPosition = CGPoint(x: view.center.x, y: 700)
            particleEmitter.emitterShape = kCAEmitterLayerLine
            particleEmitter.emitterSize = CGSize(width: view.frame.size.width, height: 1)
            
            let red = makeEmitterCellWithColor("heart01")
            let green = makeEmitterCellWithColor("heart02")
            let blue = makeEmitterCellWithColor("heart03")
            
            particleEmitter.emitterCells = [red, green, blue]
            view.layer.addSublayer(particleEmitter)
            
            
        }
    
    func createUnhappyParticles() {
        let particleEmitter = CAEmitterLayer()
        
        particleEmitter.emitterPosition = CGPoint(x: view.center.x, y: 700)
        particleEmitter.emitterShape = kCAEmitterLayerLine
        particleEmitter.emitterSize = CGSize(width: view.frame.size.width, height: 1)
        
        let red = makeEmitterCellWithColor("Nheart01")
        let green = makeEmitterCellWithColor("Nheart02")
        let blue = makeEmitterCellWithColor("Nheart03")
        
        particleEmitter.emitterCells = [red, green, blue]
        view.layer.addSublayer(particleEmitter)
        
        
    }

    
        func makeEmitterCellWithColor(image: String) -> CAEmitterCell {
            let cell = CAEmitterCell()
            cell.lifetime = 13.0
            cell.lifetimeRange = 0
            cell.velocity = -50
            cell.velocityRange = 10
            cell.emissionLongitude = CGFloat(M_PI)
            cell.emissionRange = CGFloat(M_PI_4)
            cell.spin = 0.5
            cell.spinRange = 2
            cell.scaleRange = 0.5
            cell.scaleSpeed = -0.05
            cell.contents = UIImage(named: image)?.CGImage
            cell.contents = UIImage(named: image)?.CGImage
            cell.birthRate = 1
            
            return cell
            
        }
    
}