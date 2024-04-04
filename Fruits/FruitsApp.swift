//
//  FruitsApp.swift
//  Fruits
//
//  Created by Hasan on 3/31/24.
//

import SwiftUI

@main
struct FruitsApp: App {
    @AppStorage("showOnboarding12") var showOnboarding : Bool = true
    var body: some Scene {
        WindowGroup {
            if showOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
