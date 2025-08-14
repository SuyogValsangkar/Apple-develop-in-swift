//
//  ContentView.swift
//  Birthdays
//
//  Created by suva on 8/6/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Query(sort: \Friend.birthday) private var friends: [Friend]
    @Environment(\.modelContext) private var context
    
    @State private var newFriendName = ""
    @State private var newFriendBirthday = Date.now
    
    var body: some View {
        NavigationStack {
            List(friends) { friend in
                HStack {
                    if friend.isBirthdayToday {
                        Image(systemName: "birthday.cake")
                            .foregroundStyle(.yellow)
                            .bold()
                    }
                    
                    Text(friend.name)
                        .bold(friend.isBirthdayToday)
                    
                    
                    Spacer()
                    Text(friend.birthday, format: .dateTime.month(.wide).day().year())
                        .bold(friend.isBirthdayToday)
                }
            }
            .navigationTitle("Birthdays")
            .safeAreaInset(edge: .bottom) {
                VStack(alignment: .center, spacing: 20) {
                    Text("New Brithday")
                        .font(.headline)
                    
                    DatePicker(selection: $newFriendBirthday, in: Date.distantPast...Date.now, displayedComponents: .date) {
                        TextField("Name", text: $newFriendName)
                            .textFieldStyle(.roundedBorder)
                    }
                    
                    Button("Save") {
                        let newFriend = Friend(name: newFriendName, birthday: newFriendBirthday)
                        context.insert(newFriend)
                        
                        newFriendName = ""
                        newFriendBirthday = Date.now
                    }
                    .bold()
                }
                .padding()
                .background(.bar)
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Friend.self, inMemory: true)
}
