//
//  ExplanationViewController.swift
//  SORT
//
//  Created by KudoRintaro on 2018/10/08.
//  Copyright © 2018 Rintaro Kudo. All rights reserved.
//

import UIKit



class ExplanationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    @IBAction func toGame(){
        
        performSegue(withIdentifier: "toLoading", sender: nil)
        
    }
    
}
