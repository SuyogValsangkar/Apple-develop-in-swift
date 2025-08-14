//
//  ContentView.swift
//  Pick-a-Pal
//
//  Created by suva on 7/30/25.
//

import SwiftUI

struct ContentView: View {
    @State private var names: [String] = ["Example"]
    @State private var nameToAdd: String = ""
    @State private var pickedName: String = ""
    @State private var removePicked: Bool = false
    @State private var savedList: [String] = []
    
    var body: some View {
        VStack {
            VStack {
                Image(systemName: "person.3.sequence.fill")
                    .font(.system(size: 60))
                    .foregroundStyle(.tint)
                    .symbolRenderingMode(.hierarchical)
                Text("Pick-a-Pal")
            }
            .padding(.bottom, 10)
            .font(.title)
            .bold()
            
            Text(pickedName.isEmpty ? " " : pickedName)
                .font(.title2)
                .bold()
                .foregroundStyle(.tint)
            
            List {
                ForEach(names, id: \.description) { name in
                    Text(name)
                }
            }
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .padding(.bottom, 10)
            
            TextField("Add a name to the list", text: $nameToAdd)
                .autocorrectionDisabled()
                .onSubmit {
                    nameToAdd = nameToAdd.trimmingCharacters(in: .whitespaces)
                    
                    if !nameToAdd.isEmpty {
                        
                        let existingCount = names.filter{$0.hasPrefix(nameToAdd)}.count
                        
                        nameToAdd = existingCount == 0 ? nameToAdd : "\(nameToAdd) (\(existingCount + 1))"
                        
                        names.append(nameToAdd)
                        nameToAdd = ""
                    }
                }
            
            Divider()
            
            Toggle("Remove Picked Name", isOn: $removePicked)
                .padding(.bottom, 10)
            
            Button {
                if let randomName = names.randomElement() {
                    pickedName = randomName
                    
                    if removePicked {
                        names.removeAll { name in
                            return name == pickedName
                        }
                    }
                }
                else {
                    pickedName = ""
                }
            } label: {
                Text("Click To Select a Random Name")
                    .padding(.vertical, 8)
                    .padding(.horizontal, 16)
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            
            HStack {
                Button {
                    names = []
                } label: {
                    Text("Clear List")
                        .padding(.vertical, 8)
                        .padding(.horizontal, 16)
                }
                .frame(maxWidth: 140, maxHeight: 80)
                .buttonStyle(.borderedProminent)
                .font(.headline)
                .fontWeight(.medium)
                .padding(.trailing, 10)
                
                
                Button {
                    savedList = names
                } label: {
                    Text("Save List")
                        .padding(.vertical, 8)
                        .padding(.horizontal, 16)
                }
                .frame(maxWidth: 140, maxHeight: 80)
                .buttonStyle(.borderedProminent)
                .font(.headline)
                .fontWeight(.medium)
                .padding(.leading, 10)
                .padding(.trailing, 10)
                .disabled(names.isEmpty)
                
                Button {
                    names = savedList
                } label: {
                    Text("Load List")
                        .padding(.vertical, 8)
                        .padding(.horizontal, 16)
                }
                .frame(maxWidth: 140, maxHeight: 80)
                .buttonStyle(.borderedProminent)
                .font(.headline)
                .fontWeight(.medium)
                .padding(.leading, 10)
                .disabled(savedList.isEmpty)
            }
            .padding(.top, 10)
            
        }
        .padding(.top, 10)
        .padding(.leading, 20)
        .padding(.trailing, 20)
    }
}

#Preview {
    ContentView()
}
