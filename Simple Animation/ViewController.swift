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
        UIView.animate(withDuration: 0.5) {
            
            var frame = self.greenSquare.frame
            frame.origin.x += 100
            frame.origin.y += 200
            
            self.greenSquare.frame = frame
        }
    }
    
    let greenSquare = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
    
}

