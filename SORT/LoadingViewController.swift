//
//  LoadingViewController.swift
//  SORT
//
//  Created by KudoRintaro on 2018/10/06.
//  Copyright © 2018 Rintaro Kudo. All rights reserved.
//

import UIKit
import Lottie

class LoadingViewController: UIViewController {

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
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            animationView.stop()
            self.screenTransition()
            
        }

        
    }
    
    

    func screenTransition() {
        
        // 遷移するViewを定義する.
        let gameViewController: UIViewController = GameViewController()
        
        // アニメーションを設定する.
        gameViewController.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
        
        // Viewの移動する.
        self.present(gameViewController, animated: true, completion: nil)
    }
    

}
