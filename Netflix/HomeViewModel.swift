//
//  HomeViewModel.swift
//  Netflix
//
//  Created by Michael Grant on 11/27/20.
//

import Foundation

class HomeViewModel: ObservableObject {
    // Catagory
    @Published var movies: [String: [Movie]] = [:]
    
    public var allCategories: [String] {
        return movies.keys.map({ String($0) })
    }
    
    public func getMovie(forCategory category: String) -> [Movie] {
        return movies[category] ?? []
    }
    
    init() {
        setupMovies()
    }
    
    func setupMovies() {
        movies["Fresh's Recommended"] = exampleMovies.shuffled()
        movies["Trending Now"] = exampleMovies
        movies["Not Terrible Stephen King Movies"] = exampleMovies.shuffled()
        
    }
}
