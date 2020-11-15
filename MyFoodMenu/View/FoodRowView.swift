//
//  FoodRowView.swift
//  MyFoodMenu
//
//  Created by xiaoyun Li on 15.11.2020.
//

import SwiftUI

struct FoodRowView: View {
    
    // Properties
    var food: Food
    
    var body: some View {
        HStack {
            Image(food.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .shadow(color: Color(red:0, green:0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                .background(
                    LinearGradient(gradient: Gradient(colors: [.blue, .red] ),
                                   startPoint: .leading, endPoint:.bottomLeading))
                .cornerRadius(0)
            VStack(alignment: .leading, spacing: 5, content: {
                Text(food.title)
                    .font(.title2)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Text(food.descriptioin)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
            })
            
        }//HStack
    }
}


// Preview
struct FoodRowView_Previews: PreviewProvider {
    static var previews: some View {
        FoodRowView(food: foodData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
