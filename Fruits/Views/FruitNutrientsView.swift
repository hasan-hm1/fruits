//
//  FruitnutrientsView.swift
//  Fruits
//
//  Created by Hasan on 4/3/24.
//

import SwiftUI

struct FruitNutrientsView: View {
    let fruit : FruitModel
    let nutrients : [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals" ]
    @State private var isExpanded : Bool = false
    var body: some View {
        GroupBox{
            DisclosureGroup("Nutritional value per 100g", isExpanded: $isExpanded){
                ForEach(0..<nutrients.count, id: \.self){ index in
                    Divider().padding(.vertical,2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle.fill")
                            Text(nutrients[index])
                        }
                        .foregroundStyle(fruit.gradientColors[1])
                        .font(.body)
                        .fontWeight(.bold)
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[index])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }//: GroupBox
    }
}

#Preview {
    FruitNutrientsView(fruit: fruitsData.first!)
}
