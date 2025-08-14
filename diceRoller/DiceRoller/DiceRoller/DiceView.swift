//
//  DiceView.swift
//  DiceRoller
//
//  Created by suva on 7/29/25.
//

import SwiftUI

struct DiceView: View {
    @State private var numberOfPips: Int = 1
    
    var body: some View {
        
        VStack {
            Button(action: {
                withAnimation {
                    numberOfPips = Int.random(in: 1...6)
                }
            })
            {
                Image(systemName: "die.face.\(numberOfPips).fill")
                    .resizable()
                    .frame(maxWidth: 100, maxHeight: 100)
                    .aspectRatio(1, contentMode: .fit)
                    .foregroundStyle(.black, .white)
                    .accessibilityLabel("Roll Die")
            }

        }
    }
}

#Preview {
    DiceView()
}
