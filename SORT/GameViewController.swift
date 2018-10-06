//
//  GameViewController.swift
//  SORT
//
//  Created by KudoRintaro on 2018/10/06.
//  Copyright © 2018 Rintaro Kudo. All rights reserved.
//

import UIKit
import Lottie

class GameViewController: UIViewController {
    
    @IBOutlet var numberLabel: UILabel!
    
    @IBOutlet var right: UIButton!
    @IBOutlet var wrong: UIButton!
    
    var number = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        //背景Lottie導入
        
        let animationView = LOTAnimationView(name: "gradient_animated_background")
        animationView.frame = CGRect(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height)
        animationView.center = self.view.center
        animationView.loopAnimation = true
        animationView.contentMode = .scaleToFill
        animationView.animationSpeed = 1
        
        view.addSubview(animationView)
        
        animationView.play()
        
        numberLabel.text = String(number)
        
    }
    
    @IBAction func judge(sender: UIButton){
        //数字の処理
        
        if (number % 3 == 0 || number % 10 == 3){
            
        
        }else {
            
            numberLabel.text = String(number)
           
        }
        
        
        
    }
    

    

}
