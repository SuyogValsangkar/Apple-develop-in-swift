//
//  Movies.swift
//  FriendsFavoriteMovies
//
//  Created by suva on 8/7/25.
//

import Foundation
import SwiftData

@Model
class Movie {
    var name: String
    var releaseDate: Date
    
    
    init(name: String, releaseDate: Date) {
        self.name = name
        self.releaseDate = releaseDate
    }
    
    static let sampleData: [Movie] = [
        Movie(name: "Amusing Space Traveler 3", releaseDate: Date(timeIntervalSinceReferenceDate: -402_000_000)),
        Movie(name: "Interstellar", releaseDate: Date(timeIntervalSinceReferenceDate: 437_011_200)),
        Movie(name: "Toy Story", releaseDate: Date(timeIntervalSinceReferenceDate: -161_284_800))
    ]
}
