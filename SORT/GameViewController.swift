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
    
//    @IBOutlet var right: UIButton!
//    @IBOutlet var wrong: UIButton!
    
    var number = 0
    var score : Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        
        numberLabel.text = String(number)
        
       //numberLabelを最前面に
        self.view.bringSubviewToFront(numberLabel)

        //背景Lottie導入
        
//        let animationView = LOTAnimationView(name: "gradient_animated_background")
//        animationView.frame = CGRect(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height)
//        animationView.center = self.view.center
//        animationView.loopAnimation = true
//        animationView.contentMode = .scaleToFill
//        animationView.animationSpeed = 1
//
//        view.addSubview(animationView)
//
//        animationView.play()
        
        
        
    }
    
    @IBAction func right(){
        
        if (number % 3 == 0){
            
            number = number + 1
            numberLabel.text = String(number)
            score += 1
            
        }else if(number % 10 == 3){
            
            number = number + 1
            numberLabel.text = String(number)
            score += 1
            
        }else if(number == 31 || number == 32 || number == 34 || number == 35 || number == 37 || number == 38){
            
            number = number + 1
            numberLabel.text = String(number)
            score += 1
        }
        
    }
    
    @IBAction func wrong(){
        
        if(number % 3 != 0 && number % 10 != 3){
            number  = number + 1
            numberLabel.text = String(number)
            score += 1
        }
        
    }
    

    

}
