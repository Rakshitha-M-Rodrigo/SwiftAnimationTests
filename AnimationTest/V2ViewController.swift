//
//  V2ViewController.swift
//  AnimationTest
//
//  Created by Rakshitha Muranga Rodrigo on 1/10/18.
//  Copyright © 2018 Rakshitha Muranga Rodrigo. All rights reserved.
//

// Button Bounce

import UIKit

class V2ViewController: UIViewController {

    @IBOutlet weak var animButton1: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func animButton1Pressed(_ sender: Any) {
        
        let b1 = sender as! UIButton
        let bounds = b1.bounds
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: .curveEaseOut, animations: {
            self.animButton1.bounds = CGRect(x: self.animButton1.bounds.origin.x - 20, y: self.animButton1.bounds.origin.y, width: self.animButton1.bounds.size.width + 60, height: self.animButton1.bounds.size.height)
        }) { (success: Bool) in
            if success {
                UIView.animate(withDuration: 0.5, animations: {
                    self.animButton1.bounds = bounds
                })
                
            }
        }
    }
    

  

}
