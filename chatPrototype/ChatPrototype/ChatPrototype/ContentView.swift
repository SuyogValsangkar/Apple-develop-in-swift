//
//  ContentView.swift
//  ChatPrototype
//
//  Created by suva on 7/28/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Welcome")
                .padding()
                .background(Color.gray, in: RoundedRectangle(cornerRadius: 10))
            Text("This Program Is A Test")
                .padding()
                .background(Color.blue, in: RoundedRectangle(cornerRadius: 8))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
