//
//  CustomLabeledContent.swift
//  Fruits
//
//  Created by Hasan on 4/4/24.
//

import SwiftUI

struct CustomLabeledContent: View {
    let label : String
    let value : String
    var body: some View {
        Divider().padding(.vertical, 5)
        LabeledContent{
            Text(value)
                .fontWeight(.bold)
                .foregroundStyle(.black)
        } label: {
            Text(label)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundStyle(.secondary)
        }
    }
}

#Preview {
    CustomLabeledContent(label: "Developer", value: "Hasan")
}
