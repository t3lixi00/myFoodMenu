//
//  FoodModel.swift
//  MyFoodMenu
//
//  Created by xiaoyun Li on 15.11.2020.
//

import SwiftUI

//MARK: - FOOD DATA MODEL
struct Food: Identifiable {
    var id = UUID()
    var title: String
    var image : String
    var gradientColors: [Color]
    var descriptioin : String
    var note: String
}
