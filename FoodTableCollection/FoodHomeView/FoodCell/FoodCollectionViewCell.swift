//
//  FoodCollectionViewCell.swift
//  FoodTableCollection
//
//  Created by WEMA on 12/01/2024.
//

import UIKit

class FoodCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var viewContainer: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var foodNameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var upperImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        upperImage.layer.cornerRadius = upperImage.frame.size.width / 2
        upperImage.contentMode = .scaleAspectFit
        //upperImage.clipsToBounds = true
    }
    
    func updateCell(with data: FoodListingData, index: Int) {
        imageView.image = UIImage(named: data.imageData)
        foodNameLabel.text = data.nameData
        priceLabel.text = data.priceData
        statusLabel.text = data.statusData
    }

}
