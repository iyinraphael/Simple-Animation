//
//  ViewController.swift
//  Simple Animation
//
//  Created by Iyin Raphael on 1/9/19.
//  Copyright © 2019 Iyin Raphael. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        greenSquare.backgroundColor = .green
        view.addSubview(greenSquare)
    }

    @IBAction func Animatee(_ sender: Any) {
        
        //UIVIEW animate for simple aniamtion
//        UIView.animate(withDuration: 0.5) {
//            var frame = self.greenSquare.frame
//            frame.origin.x += 100
//            frame.origin.y += 200
//
//            self.greenSquare.frame = frame
//            self.greenSquare.backgroundColor = .red
        //}
        
        CATransaction.begin()
        
        CATransaction.setCompletionBlock {
            self.greenSquare.layer.backgroundColor = UIColor.red.cgColor
        }
        let animation = CAKeyframeAnimation(keyPath: "backgroundColor")
        animation.values = [UIColor.black.cgColor, UIColor.green.cgColor, UIColor.blue.cgColor, UIColor.red.cgColor, UIColor.black.cgColor]
        animation.duration = 2.0
        //animation.repeatCount = .infinity
        greenSquare.layer.add(animation, forKey: "backgroundColorAnimation")
        CATransaction.commit()
    
    }
    
    let greenSquare = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
    
}

