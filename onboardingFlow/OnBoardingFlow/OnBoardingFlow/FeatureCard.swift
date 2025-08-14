//
//  FeatureCard.swift
//  OnBoardingFlow
//
//  Created by suva on 7/29/25.
//

import SwiftUI

struct FeatureCard: View {
    let iconName: String
    let description: String
    
    var body: some View {
        HStack {
            Image(systemName: iconName)
                .font(.largeTitle)
                .padding(.trailing, 5)
            Text(description)
            Spacer()
        }
        .padding()
        .background {
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(.tint)
                .opacity(0.75)
                .brightness(-0.4)
        }
        .foregroundStyle(.white)
    }
}

#Preview {
    FeatureCard(iconName: "questionmark.square.dashed", description: "This feature has not been given a description yet. It will be added soon.")
}

