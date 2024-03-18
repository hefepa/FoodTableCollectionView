//
//  FoodViewController.swift
//  FoodTableCollection
//
//  Created by WEMA on 12/01/2024.
//

import UIKit

class FoodViewController: UIViewController{
    var myData: [FoodListingData] = FoodListingModel().setupData()
    @IBOutlet weak var myFoodCollection: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //view.backgroundColor = .cyan
        
        myFoodCollection.delegate = self
        myFoodCollection.dataSource = self
        
        myFoodCollection.register(UINib(nibName: "FoodCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "FoodCollectionViewCell")
    }
}


extension FoodViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        myData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FoodCollectionViewCell", for: indexPath) as! FoodCollectionViewCell
        let foodCollectionViewCell = myData[indexPath.item]
        cell.updateCell(with: foodCollectionViewCell, index: indexPath.item)
        return cell
    }
}


extension FoodViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let widthOfTheScreen = collectionView.bounds.width
        return CGSize(width: (widthOfTheScreen - 30)/2, height: 270)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        .init(top: 50, left: 10, bottom: 0, right: 10)
    }
}
        
