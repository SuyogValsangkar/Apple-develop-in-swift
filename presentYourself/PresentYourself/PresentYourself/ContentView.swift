//
//  ContentView.swift
//  PresentYourself
//
//  Created by suva on 7/28/25.
//
// presenting myself in six words

import SwiftUI

struct ContentView: View {
    var body: some View {
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Hello, world!")
//        }
//        .padding()
        VStack {
            HStack(spacing: 20) {
                Text("My Name is Suyog Valsangkar")
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding(.bottom, 10)
            HStack(spacing: 20) {
                Text("I am a current Senior at UT Austin\n     Check Out my Skills Below!")
                    .padding()
                    .background(Color.orange)
                    .cornerRadius(10)
            }
            .padding(.bottom, 10)
            Image(systemName: "arrow.down.circle")
                .imageScale(.large)
                .padding(.bottom, 10)
            HStack(spacing: 20) {
                VStack(spacing: 10) {
                    Text("Java")
                        .padding(8)
                        .background(Color.green)
                        .cornerRadius(8)
                    Text("Python")
                        .padding(8)
                        .background(Color.green)
                        .cornerRadius(8)
                    Text("C (Programming)")
                        .padding(8)
                        .background(Color.green)
                        .cornerRadius(8)
                    Text("Swift")
                        .padding(8)
                        .background(Color.green)
                        .cornerRadius(8)
                }
                
                VStack(spacing: 10) {
                    Text("Chess")
                        .padding(8)
                        .background(Color.teal)
                        .cornerRadius(8)
                    Text("Running")
                        .padding(8)
                        .background(Color.teal)
                        .cornerRadius(8)
                    Text("Astronomy")
                        .padding(8)
                        .background(Color.teal)
                        .cornerRadius(8)
                    Text("Gym")
                        .padding(8)
                        .background(Color.teal)
                        .cornerRadius(8)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
