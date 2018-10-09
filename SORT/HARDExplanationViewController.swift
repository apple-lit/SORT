//
//  HARDExplanationViewController.swift
//  SORT
//
//  Created by KudoRintaro on 2018/10/09.
//  Copyright © 2018 Rintaro Kudo. All rights reserved.
//

import UIKit

class HARDExplanationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func toHardGame(){
        
        performSegue(withIdentifier: "toHardLoading", sender: nil)
        
    }
}
