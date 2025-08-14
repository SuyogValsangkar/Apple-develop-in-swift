//
//  InspirationCard.swift
//  OnBoardingFlow
//
//  Created by suva on 7/29/25.
//

import SwiftUI

struct InspirationCard: View {
    let iconName: String
    let title: String
    let description: String
    
    var body: some View {
            VStack {
                Image(systemName: iconName)
                    .font(.system(size: 40))
                Text(title)
                    .font(.system(size: 25))
                    .padding(.top, 10)
                Text(description)
                    .font(.subheadline)
                    .multilineTextAlignment(.center)
            }
            .frame(width: 130, height: 130)
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
    InspirationCard(iconName: "photo.artframe", title: "Mt. Kilimanjaro", description: "A large dormant volcano in Tanzania, and the highest mountain in Africa")
}
