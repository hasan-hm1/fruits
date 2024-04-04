//
//  FruitCardView.swift
//  Fruits
//
//  Created by Hasan on 3/31/24.
//

import SwiftUI

struct FruitCardView: View {
    let fruitModel : FruitModel
    @State private var isAnimating : Bool = false
    var body: some View {
        ZStack {
            LinearGradient(colors: fruitModel.gradientColors, startPoint: .top, endPoint: .bottom)
            VStack(spacing:10) {
                Image(fruitModel.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.3), radius: 12, x: 2, y : 2)
                    .scaleEffect(isAnimating ? 1 : 0.6)
                Text(fruitModel.title)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.3), radius: 12, x: 2, y : 2)
                Text(fruitModel.headline)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .padding(.horizontal,20)
                StartButtonView()
                    .padding(.top, 20)
            }// VStack
        }// ZStack
        .onAppear(){
            withAnimation(.easeOut(duration: 0.5)){
                isAnimating = true
            }
        }
        .cornerRadius(15)
        .padding(.horizontal,12)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    FruitCardView(fruitModel: fruitsData[2])
       
        
}
