//
//  WelcomePage.swift
//  OnBoardingFlow
//
//  Created by suva on 7/29/25.
//

import SwiftUI

struct WelcomePage: View {
    var body: some View {
        VStack() {
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 150, height: 150)
                    .foregroundStyle(.tint)
                Image(systemName: "mountain.2.fill")
                    .font(.system(size: 55))
                    .foregroundStyle(.white)
            }
            Text("Welcome")
                .font(.largeTitle)
                .fontWeight(.light)
                .padding(.top, 10)
            Text("Explore the app through our interactive tutorial\nor jump right in!")
                .fontWeight(.thin)
                .multilineTextAlignment(.center)
        }
        .padding()
    }
}

#Preview {
    WelcomePage()
}
