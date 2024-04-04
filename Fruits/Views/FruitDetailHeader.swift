//
//  FruitDetailHeader.swift
//  Fruits
//
//  Created by Hasan on 4/3/24.
//

import SwiftUI

struct FruitDetailHeader: View {
    @State private var isAnimating : Bool = false
    let fruit : FruitModel
    var body: some View {
        ZStack{
            LinearGradient(colors: fruit.gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.3), radius: 8, x: 4, y: 4)
                .scaleEffect(isAnimating ? 1 : 0.5)
                .animation(.easeOut(duration:0.5), value: isAnimating)
        }//: ZStack
        .frame(height: 440)
        .onAppear(){
            isAnimating = true
        }
    }
}

#Preview {
    FruitDetailHeader(fruit: fruitsData.first!)
}
