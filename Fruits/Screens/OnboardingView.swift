//
//  OnboardingView.swift
//  Fruits
//
//  Created by Hasan on 4/2/24.
//

import SwiftUI

struct OnboardingView: View {

    var body: some View {
        TabView {
            // fruitsData[0...3] is a sublist because we don't include too many pages on onboarding screen
            ForEach(fruitsData.shuffled()[0...3] , id: \.self){ fruit in
               FruitCardView(fruitModel: fruit)
            }
        }// TabView
        .tabViewStyle(PageTabViewStyle())
        
    }
}

#Preview {
    OnboardingView()
}
