//
//  FruitListItem.swift
//  Fruits
//
//  Created by Hasan on 4/3/24.
//

import SwiftUI

struct FruitListItem: View {
    let fruit : FruitModel
    var body: some View {
        NavigationLink(destination: FruitDetailsView(fruit: fruit)) {
            LabeledContent{
//                Image(systemName: "chevron.compact.right")
            } label: {
                // MARK: - Leading Image
                HStack(spacing:10){
                    Image(fruit.image)
                        .renderingMode(.original)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 80)
                        .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.3), radius: 5, x: 2,y:2)
                        .padding(10)
                        .background(
                            LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom)
                        )
                        .cornerRadius(12)
                    // MARK: - Title and Subtitle
                    VStack(alignment: .leading) {
                        Text(fruit.title)
                            .font(.title2)
                            .fontWeight(.heavy)
                        Text(fruit.headline)
                            .font(.caption)
                            .foregroundStyle(.secondary)
                            .multilineTextAlignment(.leading)
                    } // VStack
                } // HStack
                
               
        }

        }
    }
}

#Preview {
    FruitListItem(fruit: fruitsData.first!)
}
