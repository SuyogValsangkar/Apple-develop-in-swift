//
//  MovieList.swift
//  FriendsFavoriteMovies
//
//  Created by suva on 8/8/25.
//

import SwiftUI
import SwiftData

struct MovieList: View {
    @Query(sort: \Movie.name) private var movies: [Movie]
    @Environment(\.modelContext) private var context
    
    var body: some View {
        NavigationSplitView {
            List {
                ForEach(movies) { movie in
                    NavigationLink(movie.name) {
                        Text("Detail view for \(movie.name)")
                            .navigationTitle(movie.name)
                            .navigationBarTitleDisplayMode(.inline)
                    }
                }
            }
            .navigationTitle("Movies")
        } detail: {
            Text("Select a movie")
                .navigationTitle("Movie")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    MovieList()
        .modelContainer(SampleData.shared.modelContainer)
}
