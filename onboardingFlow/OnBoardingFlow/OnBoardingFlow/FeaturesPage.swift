//
//  FeaturesPage.swift
//  OnBoardingFlow
//
//  Created by suva on 7/29/25.
//

import SwiftUI

struct FeaturesPage: View {
    var body: some View {
        VStack {
            Text("Notable Features")
                .font(.largeTitle)
                .fontWeight(.light)
                .padding(.bottom)
            
            FeatureCard(iconName: "sun.max.trianglebadge.exclamationmark.fill", description: "Extreme heat advisory warnings and UV index alerts")
            
            FeatureCard(iconName: "map.fill", description: "Official trail guides and hiking maps")
            
            FeatureCard(iconName: "book.closed.fill", description: "Write trail logs or journal your adventures")
            
            FeatureCard(iconName: "person.2.circle.fill", description: "Join and hike with groups")
            
            Spacer()
            
        }
        .padding()
        .padding(.top, 120)
    }
}

#Preview {
    FeaturesPage()
        .frame(maxHeight: .infinity)
        .background(Gradient(colors: gradientColors))
        .foregroundStyle(.black)
}
