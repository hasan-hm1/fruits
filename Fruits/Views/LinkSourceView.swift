//
//  LinkSourceView.swift
//  Fruits
//
//  Created by Hasan on 4/3/24.
//

import SwiftUI

struct LinkSourceView: View {
    var body: some View {
        GroupBox{
            HStack{
                Text("Content source")
                Spacer()
                Link(destination: URL(string: "https://www.wikipedia.com")!, label: {
                    Text("Wikipedia")
                    Image(systemName: "arrow.up.right.square")
                })
            }//: HStack
            .font(.footnote)
        }//: GroupBoxe
    }
}

#Preview {
    LinkSourceView()
}
