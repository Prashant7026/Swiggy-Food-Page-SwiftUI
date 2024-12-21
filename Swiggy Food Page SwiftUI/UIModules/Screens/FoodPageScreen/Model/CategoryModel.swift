//
//  CategoryModel.swift
//  Swiggy Food Page SwiftUI
//
//  Created by Prashant Kumar Soni on 21/12/24.
//

import SwiftUI

struct CategoryModel: Hashable {
    var categoryName: String
    var categoryImageName: String?
    
    var categoryImage: Image {
        AppImageProvider.burgerImage
    }
}
