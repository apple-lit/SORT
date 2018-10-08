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
    @IBOutlet var countDownLabel: UILabel!
    
    var count : Double = 30
    var timer : Timer!
    
    
    var number = 0
    var score : Int = 0
    


    override func viewDidLoad() {
        super.viewDidLoad()

        
        timer = Timer.scheduledTimer(timeInterval: 1,
                                     target: self,
                                     selector: #selector(self.onUpdate(timer:)),
                                     userInfo: nil,
                                     repeats: true)
        
        numberLabel.text = String(number)
        
       //numberLabelを最前面に
        self.view.bringSubviewToFront(numberLabel)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResult"{
            let resultViewController = segue.destination as! ResultViewController
            resultViewController.score = self.score
        }
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
        }else{
            self.performSegue(withIdentifier: "toResult", sender: nil)
        }
        
    }
    
    @IBAction func wrong(){
        
        if(number % 3 != 0 && number % 10 != 3){
            number  = number + 1
            numberLabel.text = String(number)
            score += 1
        }else{
            self.performSegue(withIdentifier: "toResult", sender: nil)
        }
        
    }
    
    @objc func onUpdate(timer : Timer){
        
        
        count -= 1
        
        let str = String(format: "%.0f", count)
        
        countDownLabel.text = str
        
        if count == 0{
            timer.invalidate()
            self.performSegue(withIdentifier: "toResult", sender: nil)
        }
        
    }

    

    

}
