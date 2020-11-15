//
//  ContentView.swift
//  MyFoodMenu
//
//  Created by xiaoyun Li on 15.11.2020.
//

import SwiftUI

struct ContentView: View {
    //MARK PROPERTIES
    var foods: [Food] = foodData
    
    
    
    //MARK - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(foods){item in FoodRowView(food: item)
                    .padding(.vertical, 4)}
            }
            .navigationTitle("Breakfast")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(foods: foodData)
    }
}
