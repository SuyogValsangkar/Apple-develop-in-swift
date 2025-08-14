//
//  ContentView.swift
//  DiceRoller
//
//  Created by suva on 7/29/25.
//

import SwiftUI

struct ContentView: View {
    @State private var numberOfDice: Int = 1
    
    var body: some View {
        VStack {
            Text("Dice Roller")
                .font(.largeTitle.lowercaseSmallCaps().bold())
                .foregroundStyle(.black)
            
            Text("Tap on the dice to roll them!")
                .padding(.bottom, 20)
            
            HStack(spacing: 25) {
                ForEach(1...numberOfDice, id: \.description) { _ in
                    DiceView()
                }
            }
            
            HStack {
                Button("Remove a Die", systemImage: "minus.circle.fill") {
                    withAnimation {
                        numberOfDice -= 1
                    }
                }
                .disabled(numberOfDice == 1)
                .foregroundStyle(.white, .tint)
                
                Button("Add A Die", systemImage: "plus.circle.fill") {
                    withAnimation {
                        numberOfDice += 1
                    }
                }
                .disabled(numberOfDice == 5)
                .foregroundStyle(.white, .tint)
            }
            .padding()
            .labelStyle(.iconOnly)
            .font(.title)
            
            Spacer()
        }
        .padding()
        .padding(.top, 100)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.appBackground)
    }
}

#Preview {
    ContentView()
}
