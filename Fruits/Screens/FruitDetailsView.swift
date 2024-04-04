//
//  FruitDetailsView.swift
//  Fruits
//
//  Created by Hasan on 4/3/24.
//

import SwiftUI

struct FruitDetailsView: View {
    let fruit : FruitModel
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack {
                // MARK: - Header
                FruitDetailHeader(fruit: fruit)
                
                VStack(alignment: .leading,spacing:20) {
                    // MARK: - Title
                    Text(fruit.title)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                    .foregroundStyle(fruit.gradientColors[1])
                    // MARK: - Headline
                    Text(fruit.headline)
                        .font(.headline)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .multilineTextAlignment(.leading)
                    // MARK: - nutrients
                    FruitNutrientsView(fruit: fruit)
                    // MARK: - nutritions
                    Text("learn More about \(fruit.title)")
                        .textCase(.uppercase)
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundStyle(fruit.gradientColors[0])
                    
                    // MARK: - Description
                    Text(fruit.description)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    // MARK: - Source
                    LinkSourceView()
                        .padding(.bottom, 60)
                    
                    
                }//: VStack
                .padding(.horizontal, 20)
                .frame(maxWidth: 620)
            }//: VStack
            
        }// :ScrollView
        .ignoresSafeArea()
    }
}

#Preview {
    FruitDetailsView(fruit: fruitsData.first!)
}
