//
//  HARDLoadingViewController.swift
//  SORT
//
//  Created by KudoRintaro on 2018/10/09.
//  Copyright © 2018 Rintaro Kudo. All rights reserved.
//

import UIKit
import Lottie

class HARDLoadingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let animationView = LOTAnimationView(name: "loading")
        animationView.frame = CGRect(x: 0, y: 0, width: 210, height: 210)
        animationView.center = self.view.center
        animationView.loopAnimation = true
        animationView.contentMode = .scaleAspectFit
        animationView.animationSpeed = 1
        
        
        
        view.addSubview(animationView)
        
        animationView.play()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            animationView.stop()
            self.performSegue(withIdentifier: "toHardGame", sender: nil)
    }
    
    }
    

}
