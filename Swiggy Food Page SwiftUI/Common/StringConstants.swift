//
//  StringConstants.swift
//  Swiggy Food Page SwiftUI
//
//  Created by Prashant Kumar Soni on 21/12/24.
//

import SwiftUI

final class StringConstants {
    static let sharedInstance = StringConstants()
    
    private init() {}
    
    let categoryElements = [
        CategoryModel(categoryName: "Party Delights"),
        CategoryModel(categoryName: "Food in 10 Mins"),
        CategoryModel(categoryName: "Cakes & More"),
        CategoryModel(categoryName: "Festive Offers"),
        CategoryModel(categoryName: "Gift Hampers"),
    ]
}
