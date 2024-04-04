//
//  StartButtonView.swift
//  Fruits
//
//  Created by Hasan on 4/2/24.
//

import SwiftUI

struct StartButtonView: View {
    @AppStorage("showOnboarding12") var showOnboarding : Bool = false
    var body: some View {
        Button{
            showOnboarding = false
        } label: {
            HStack {
                Text("Start")
                    .font(.system(size: 26))
                Image(systemName: "arrow.right.circle")
                    .font(.system(size: 30))
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
            Capsule()
                .strokeBorder(style: StrokeStyle(lineWidth: 1.2))
            )
        }
        .accentColor(.white)

    }
}

#Preview(traits: .sizeThatFitsLayout) {
    StartButtonView()
}
