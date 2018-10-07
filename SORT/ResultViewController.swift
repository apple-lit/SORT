//
//  ResultViewController.swift
//  SORT
//
//  Created by KudoRintaro on 2018/10/07.
//  Copyright © 2018 Rintaro Kudo. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var scoreLabel : UILabel!
    
    var score : Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        
        scoreLabel.text = String(score)
        
    }
    
    @IBAction func home(){
        
        self.performSegue(withIdentifier: "toHome", sender: nil)
        
    }
    
    @IBAction func again(){
        
        self.performSegue(withIdentifier: "toLoad", sender: nil)
        
    }
    

   
}
