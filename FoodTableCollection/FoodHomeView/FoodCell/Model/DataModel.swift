//
//  DataModel.swift
//  FoodTableCollection
//
//  Created by WEMA on 12/01/2024.
//

import Foundation
struct FoodListingModel {
    
    func setupData() -> [FoodListingData] {
        [
            FoodListingData(imageData: "picone", nameData: "Burger", priceData: "#58", statusData: "Pending"),
            FoodListingData(imageData: "pictwo", nameData: "Cheese Pizza", priceData: "#23", statusData: "Delivered"),
            FoodListingData(imageData: "picthree", nameData: "Craft Beef Burger", priceData: "40", statusData: "Delivered"),
            FoodListingData(imageData: "picfour", nameData: "Garri", priceData: "#12", statusData: "Pending"),
            FoodListingData(imageData: "picfive", nameData: "Eba", priceData: "#54", statusData: "Pending"),
            FoodListingData(imageData: "pictwo", nameData: "Beans", priceData: "66", statusData: "Delivered"),
            
            FoodListingData(imageData: "picone", nameData: "Rice", priceData: "#11", statusData: "Pending"),
            FoodListingData(imageData: "picfour", nameData: "Biscuit", priceData: "#43", statusData: "#99")
        ]
        
    }
}

struct FoodListingData {
    let imageData: String
    let nameData: String
    let priceData: String
    let statusData: String
}
