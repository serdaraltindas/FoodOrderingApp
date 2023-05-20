//
//  DishPortraitCollectionViewCell.swift
//  FoodOrderingApp
//
//  Created by Serdar Altındaş on 20.05.2023.
//

import UIKit

class DishPortraitCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "DishPortraitCollectionViewCell"
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var descprictionLabel: UILabel!
    @IBOutlet weak var caloriesLabel: UILabel!
    
    func setup(dish: Dish) {
        titleLabel.text = dish.name
        imageView.kf.setImage(with: dish.image?.asUrl)
        caloriesLabel.text = dish.formattedCalories
        descprictionLabel.text = dish.decription
    }
}
