//
//  DishListTableViewCell.swift
//  FoodOrderingApp
//
//  Created by Serdar Altındaş on 25.05.2023.
//

import UIKit

class DishListTableViewCell: UITableViewCell {
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    func setup(dish: Dish) {
        dishImageView.kf.setImage(with: dish.image?.asUrl)
        titleLabel.text = dish.name
        descriptionLabel.text = dish.decription
    }
}
