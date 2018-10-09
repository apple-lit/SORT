//
//  HARDGameViewController.swift
//  SORT
//
//  Created by KudoRintaro on 2018/10/09.
//  Copyright © 2018 Rintaro Kudo. All rights reserved.
//

import UIKit

class HARDGameViewController: UIViewController {
    
    @IBOutlet var numberLabel: UILabel!
    @IBOutlet var countDownLabel: UILabel!
    
    var count : Double = 30
    var timer : Timer!
    
    
    var number = Int(arc4random_uniform(301))
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
        if segue.identifier == "toHardResult"{
            let hardResultViewController = segue.destination as! HARDResultViewController
            hardResultViewController.score = self.score
        }
    }
    
    @IBAction func right(){
        
        if (number % 3 == 0){
            
            number = Int(arc4random_uniform(301))
            numberLabel.text = String(number)
            score += 1
            
        }else if(number % 10 == 3){
            
            number = Int(arc4random_uniform(301))
            numberLabel.text = String(number)
            score += 1
            
        }else if(number == 31 || number == 32 || number == 34 || number == 35 || number == 37 || number == 38 || number == 300 || number == 131 || number == 133 || number == 134 || number == 136 || number == 137 || number == 139 || number == 232 || number == 233 || number == 235 || number == 236 || number == 238 || number == 239){
            
            number = Int(arc4random_uniform(301))
            numberLabel.text = String(number)
            score += 1
        }else{
            self.performSegue(withIdentifier: "toHardResult", sender: nil)
        }
        
    }
    
    @IBAction func wrong(){
        
        if(number % 3 != 0 && number % 10 != 3){
            number  = Int(arc4random_uniform(301))
            numberLabel.text = String(number)
            score += 1
        }else{
            self.performSegue(withIdentifier: "toHardResult", sender: nil)
        }
        
    }
    
    @objc func onUpdate(timer : Timer){
        
        
        count -= 1
        
        let str = String(format: "%.0f", count)
        
        countDownLabel.text = str
        
        if count == 0{
            timer.invalidate()
            self.performSegue(withIdentifier: "toHardResult", sender: nil)
        }
        
    }
    
    
    
    

   

}
