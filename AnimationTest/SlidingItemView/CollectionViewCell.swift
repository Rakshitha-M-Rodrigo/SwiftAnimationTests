//
//  CollectionViewCell.swift
//  AnimationTest
//
//  Created by Rakshitha Muranga Rodrigo on 1/10/18.
//  Copyright © 2018 Rakshitha Muranga Rodrigo. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var mainImageViewContainer: UIView!
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var smallImageViewPositionView: UIView!
    @IBOutlet weak var originalPosView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var titleOriginalView: UIView!
    
    var mainImageCenter: CGPoint!
    var mainTitleCenter: CGPoint!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.bottomView.alpha = 0
        scrollView.delegate = self
        
        
        self.mainImageViewContainer.layer.cornerRadius = self.mainImageViewContainer.bounds.width/2.0
        self.mainImageViewContainer.layer.borderWidth = 5
        self.mainImageViewContainer.layer.borderColor = UIColor.white.cgColor
        self.mainImageCenter = self.mainImageViewContainer.center
        self.mainTitleCenter = self.titleLabel.center
    }

}

extension CollectionViewCell: UIScrollViewDelegate{
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let contentOffset = scrollView.contentOffset.y
        var percentage = (contentOffset / self.scrollView.bounds.height) * 100
        
        print(percentage)
        
        if(percentage > 1){
            self.bottomView.alpha = 1
            UIView.animate(withDuration: 0.3, delay:0, options: .curveEaseInOut, animations: {
                //            self.view2.frame.size = CGSize(width: 100.0, height: 100.0)
                self.mainImageViewContainer.layer.setAffineTransform(CGAffineTransform(scaleX: 0.8, y: 0.8))
                self.mainImageViewContainer.center = self.smallImageViewPositionView.center
                //ß	self.titleLabel.center.y = self.titleOriginalView.center.y
                self.titleLabel.center = self.mainTitleCenter
                //self.titleLabel.bounds.insetBy(dx: self.titleOriginalView.center.x, dy: self.titleOriginalView.center.y)
                self.titleLabel.layer.setAffineTransform(CGAffineTransform(scaleX: 1, y: 1))
                
                
            },completion: nil)
        } else{
            self.bottomView.alpha = 0
            UIView.animate(withDuration: 0.4, delay:0, options: .curveEaseInOut, animations: {
                //            self.view2.frame.size = CGSize(width: 100.0, height: 100.0)
                self.mainImageViewContainer.layer.setAffineTransform(CGAffineTransform(scaleX: 1, y: 1))
                self.mainImageViewContainer.center = self.originalPosView.center
                self.titleLabel.center.y = self.smallImageViewPositionView.center.y
                self.titleLabel.center.x = self.containerView.bounds.width/2
                //self.titleLabel.frame.size.width = self.containerView.bounds.width / 2
                self.titleLabel.frame.size.height = self.containerView.bounds.height
                self.titleLabel.layer.setAffineTransform(CGAffineTransform(scaleX: 3, y: 3))
                
            },completion: nil)
        }
    }               
    
    
    
}
