//
//  CircleAnimationViewController.swift
//  AnimationTest
//
//  Created by Rakshitha Muranga Rodrigo on 1/10/18.
//  Copyright © 2018 Rakshitha Muranga Rodrigo. All rights reserved.
//

import UIKit

class CircleAnimationViewController: UIViewController {


    
    
    let shapeLayer = CAShapeLayer()
    let trackLayer = CAShapeLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //drawing a circle
        
        
        let circularPath = UIBezierPath(arcCenter: .zero, radius: 80, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        
        trackLayer.path = circularPath.cgPath
        trackLayer.fillColor = UIColor.clear.cgColor
        trackLayer.strokeColor = UIColor.white  .cgColor
        trackLayer.lineWidth = 10
        trackLayer.strokeEnd = 1
        trackLayer.lineCap = kCALineCapRound
        trackLayer.position = view.center
        trackLayer.opacity = 0.4
        view.layer.addSublayer(trackLayer)
        
        shapeLayer.path = circularPath.cgPath
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.strokeColor = UIColor.yellow.cgColor
        shapeLayer.lineWidth = 10
        shapeLayer.strokeEnd = 0
        shapeLayer.lineCap = kCALineCapRound
        shapeLayer.position = view.center
        shapeLayer.transform = CATransform3DMakeRotation(-CGFloat.pi/2, 0, 0, 1)
        view.layer.addSublayer(shapeLayer)
        
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTap)))

    }
    
    @objc private func handleTap(){
        print("tapped : starting animations")
        
        let basicAnimation = CABasicAnimation(keyPath: "strokeEnd")
        basicAnimation.toValue = 1
        basicAnimation.duration = 1.75
        basicAnimation.fillMode = kCAFillModeForwards
        basicAnimation.isRemovedOnCompletion = false
        
        
        shapeLayer.add(basicAnimation, forKey: "basicAnimation")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    
  

}
