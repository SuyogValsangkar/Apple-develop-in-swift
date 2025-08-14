//
//  ContentView.swift
//  OnBoardingFlow
//
//  Created by suva on 7/29/25.
//

import SwiftUI

// declarations
let gradientColors: [Color] = [
    .gradientTop,
    .gradientBottom
]

struct ContentView: View {
    var body: some View {
        TabView {
            WelcomePage()
            FeaturesPage()
            InspirationsPage()
        }
        .tabViewStyle(.page)
        .background(Gradient(colors: gradientColors))
        .foregroundStyle(.black)
    }
}

#Preview {
    ContentView()
}
