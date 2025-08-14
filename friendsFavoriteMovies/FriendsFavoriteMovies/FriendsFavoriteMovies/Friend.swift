//
//  Friend.swift
//  FriendsFavoriteMovies
//
//  Created by suva on 8/7/25.
//

import Foundation
import SwiftData

@Model
class Friend {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    static let sampleFriends: [Friend] = [
        Friend(name: "Suyog"),
        Friend(name: "Suyog2"),
        Friend(name: "Suyog3"),
        Friend(name: "Suyog4"),
        Friend(name: "Suyog5")
    ]
}
