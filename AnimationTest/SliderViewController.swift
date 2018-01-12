//
//  SliderViewController.swift
//  AnimationTest
//
//  Created by Rakshitha Muranga Rodrigo on 1/11/18.
//  Copyright © 2018 Rakshitha Muranga Rodrigo. All rights reserved.
//

import UIKit

class SliderViewController: UIViewController {

    @IBOutlet weak var mainCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.mainCollectionView.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "sliderCollectionCell")
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

extension SliderViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let mainCell = collectionView.dequeueReusableCell(withReuseIdentifier: "sliderCollectionCell", for: indexPath) as! CollectionViewCell
        
        let headerView = mainCell.viewWithTag(1) as! UIView
        if (collectionView == mainCollectionView){
            
            let xx = indexPath.row % 3
            switch xx {
            case 1:
                mainCell.backgroundColor = .orange
//                headerView.backgroundColor = .red
                break
            case 2:
                mainCell.backgroundColor = .blue
//                headerView.backgroundColor = .blue
                break
            
            default:
                mainCell.backgroundColor = .yellow
//                headerView.backgroundColor = .yellow
            }
            return mainCell
        }
        return mainCell
    }
    
    
}


extension SliderViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        if (collectionView == mainCollectionView){
            return CGSize(width: self.mainCollectionView.frame.size.width, height: self.mainCollectionView.frame.size.height)
        }
        return CGSize(width: self.mainCollectionView.bounds.size.width, height: self.mainCollectionView.bounds.size.height)
    }
    

}
