//
//  DishDetailViewController.swift
//  FoodOrderingApp
//
//  Created by Serdar Altındaş on 24.05.2023.
//

import UIKit

class DishDetailViewController: UIViewController {
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var caloriesLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func placeOrderButtonClicked(_ sender: UIButton) {
        
    }
    
}
