//
//  String+Extension.swift
//  FoodOrderingApp
//
//  Created by Serdar Altındaş on 17.05.2023.
//

import Foundation

extension String {
    var asUrl: URL? {
        return URL(string: self)
    }
}
