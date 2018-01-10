//
//  ViewController.swift
//  AnimationTest
//
//  Created by Rakshitha Muranga Rodrigo on 1/8/18.
//  Copyright © 2018 Rakshitha Muranga Rodrigo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: Outlets
    @IBOutlet weak var ballView: UIView!
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var hoLabel: UILabel!
    @IBOutlet weak var ho2Label: UILabel!
    @IBOutlet weak var ho3Label: UILabel!
    @IBOutlet weak var view3: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view2.alpha = 0
        self.hoLabel.alpha = 0
        self.ho2Label.alpha = 0
        self.ho3Label.alpha = 0
        self.view3.alpha = 0
        
        UIView.animate(withDuration: 5, delay:1, options:[.repeat, .autoreverse, .curveEaseInOut], animations: {
                self.ballView.center.x += self.view.frame.size.width
            self.ballView.layer.cornerRadius += self.ballView.frame.size.width / 2
            print(self.ballView.center.x )
            print(self.view.bounds.width)
        },
        completion: nil)
        
        
        UIView.animate(withDuration: 3) {
            self.view1.center.x -= 200
        }
        
        
        UIView.animate(withDuration: 3, delay:1, options:[.repeat, .autoreverse, .curveEaseInOut], animations: {
            self.view1.layer.cornerRadius += self.view1.frame.size.width / 2
            self.view1.center = CGPoint(x: 100, y: -300)
           
        },
                       completion: nil)
        
        UIView.animate(withDuration: 2, delay:3, options:[.repeat, .autoreverse, .curveEaseInOut], animations: {
//            self.view2.frame.size = CGSize(width: 100.0, height: 100.0)
            self.view2.layer.setAffineTransform(CGAffineTransform(scaleX: 2, y: 2))
            self.view2.alpha = 1
            
        },completion: nil)
        
        UIView.animate(withDuration: 2, delay:1, options:[.repeat, .autoreverse, .curveEaseOut], animations: {
            //            self.view2.frame.size = CGSize(width: 100.0, height: 100.0)
            self.hoLabel.layer.setAffineTransform(CGAffineTransform(scaleX: 2, y: 2))
            self.hoLabel.alpha = 1
            
        },completion: nil)
        UIView.animate(withDuration: 2, delay:1, options:[.repeat, .autoreverse, .curveEaseOut], animations: {
            //            self.view2.frame.size = CGSize(width: 100.0, height: 100.0)
            self.view3.layer.setAffineTransform(CGAffineTransform(scaleX: 2, y: 2))
            self.view3.alpha = 1
            
        },completion: nil)
        UIView.animate(withDuration: 2, delay:2, options:[.repeat, .autoreverse, .curveEaseOut], animations: {
            //            self.view2.frame.size = CGSize(width: 100.0, height: 100.0)
            self.hoLabel.layer.setAffineTransform(CGAffineTransform(scaleX: 2, y: 2))
            self.hoLabel.alpha = 1
            
        },completion: nil)
        UIView.animate(withDuration: 2, delay:4, options:[.repeat, .autoreverse, .curveEaseOut], animations: {
            //            self.view2.frame.size = CGSize(width: 100.0, height: 100.0)
            self.ho2Label.layer.setAffineTransform(CGAffineTransform(scaleX: 2, y: 2))
            self.ho2Label.alpha = 1
            
        },completion: nil)
        UIView.animate(withDuration: 2, delay:5, options:[.repeat, .autoreverse, .curveEaseOut], animations: {
            //            self.view2.frame.size = CGSize(width: 100.0, height: 100.0)
            self.ho3Label.layer.setAffineTransform(CGAffineTransform(scaleX: 2, y: 2))
            self.ho3Label.alpha = 1
            
        },completion: nil)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    


}

