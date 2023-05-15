//
//  OnboardingCollectionViewCell.swift
//  FoodOrderingApp
//
//  Created by Serdar Altındaş on 15.05.2023.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing: OnboardingCollectionViewCell.self)
    
    @IBOutlet weak var slideImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var slideDescriptionLabel: UILabel!
    
    func setup (_ slide: OnboardingSlide) {
        slideImageView.image = slide.image
        titleLabel.text = slide.title
        slideDescriptionLabel.text = slide.description
    }
}
