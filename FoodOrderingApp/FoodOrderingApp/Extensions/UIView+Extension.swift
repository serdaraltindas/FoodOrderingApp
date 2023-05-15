//
//  UIView+Extension.swift
//  FoodOrderingApp
//
//  Created by Serdar Altındaş on 15.05.2023.
//

import UIKit

extension UIView {
    
    @IBInspectable var cornerRadius :CGFloat {
        get{return self.cornerRadius}
        set{
            self.layer.cornerRadius = newValue
        }
    }
    
}
