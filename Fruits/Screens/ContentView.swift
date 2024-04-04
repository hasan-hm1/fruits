//
//  ContentView.swift
//  Fruits
//
//  Created by Hasan on 3/31/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isSheetPresented : Bool = false
    var body: some View {
        NavigationView {
            List {
                ForEach(fruitsData.shuffled()){ fruit in
                    FruitListItem(fruit: fruit)
                } // For loop
            } // List
            
            
                .navigationTitle(Text("Fruits"))
                .navigationBarItems(trailing: Button {
                    isSheetPresented = true
                }label: {
                    Image(systemName: "slider.horizontal.3")
                        .fontWeight(.bold)
                }
                )
                
        }
        .sheet(isPresented: $isSheetPresented, content: {
            SettingsView()
//                .presentationDetents([.medium, .large])
//                .presentationDragIndicator(.visible)
        })

    }
}

#Preview {
    ContentView()
}
