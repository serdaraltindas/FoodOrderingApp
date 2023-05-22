//
//  DishLandscapeCollectionViewCell.swift
//  FoodOrderingApp
//
//  Created by Serdar Altındaş on 22.05.2023.
//

import UIKit

class DishLandscapeCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var caloriesLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
