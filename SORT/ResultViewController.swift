//
//  ResultViewController.swift
//  SORT
//
//  Created by KudoRintaro on 2018/10/07.
//  Copyright © 2018 Rintaro Kudo. All rights reserved.
//

import UIKit
import Accounts


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
    
    @IBAction func share(sender: UIButton) {
        
        
    let shareText = "【SORT】みんなこのスコアを越えられるかな？？\n スコアは「\(score)」でした。"
        //let shareWebsite = NSURL(string: "アプリのリンクを貼りたい")!
        
        let activityItems = [shareText]
        
        
        let activityVC = UIActivityViewController(activityItems: activityItems, applicationActivities: nil)
        
        
        let excludedActivityTypes = [
            UIActivity.ActivityType.message,
            UIActivity.ActivityType.saveToCameraRoll,
            UIActivity.ActivityType.print
        ]
        
        activityVC.excludedActivityTypes = excludedActivityTypes
        
        
        self.present(activityVC, animated: true, completion: nil)
        
        
    }
    

   
}
