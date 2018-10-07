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

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func home(){
        
        self.performSegue(withIdentifier: "toHome", sender: nil)
        
    }
    
    @IBAction func again(){
        
        self.performSegue(withIdentifier: "toLoad", sender: nil)
        
    }
    

   
}
