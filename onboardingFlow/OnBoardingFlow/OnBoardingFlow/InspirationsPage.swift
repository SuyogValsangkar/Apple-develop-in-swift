//
//  InspirationsPage.swift
//  OnBoardingFlow
//
//  Created by suva on 7/29/25.
//

import SwiftUI

struct InspirationsPage: View {
    var body: some View {
        VStack {
            Text("Get Inspiration For Your Next Adventure")
                .font(.largeTitle)
                .fontWeight(.light)
                .padding(.bottom)
                .multilineTextAlignment(.center)
            
            HStack {
                InspirationCard(iconName: "photo.on.rectangle.fill", title: "Pikes Peak", description: "The ideal beginner's summit")
                
                InspirationCard(iconName: "photo.on.rectangle.fill", title: "Mt. Kilimanjaro", description: "The highest mountain in Africa")
            }
            
            HStack {
                InspirationCard(iconName: "photo.on.rectangle.fill", title: "Mt. Fuji", description: "Japan's most iconic peak")
                
                InspirationCard(iconName: "photo.on.rectangle.fill", title: "K2", description: "Most dangerous mountain in the world")
            }
            
            HStack {
                InspirationCard(iconName: "photo.on.rectangle.fill", title: "Mt. Kailash", description: "Climbing this sacred peak is prohibited")
                
                InspirationCard(iconName: "photo.on.rectangle.fill", title: "Mt. Triglav", description: "An easy peak suitable for all levels")
            }
            
            Spacer()
        }
        .padding()
        .padding(.top, 40)
    }
}

#Preview {
    InspirationsPage()
        .frame(maxWidth: .infinity)
        .background(Gradient(colors: gradientColors))
        .foregroundStyle(.black)
}
