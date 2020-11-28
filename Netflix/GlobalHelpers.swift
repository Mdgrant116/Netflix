//
//  GlobalHelpers.swift
//  Netflix
//
//  Created by Michael Grant on 11/27/20.
//

import Foundation


let exampleMovie1 = Movie(id: UUID().uuidString, name: "DARK", thumbnailURL: URL(string: "https://picsum.photos/200/300")!, categories: ["Dystopian", "Eciting", "Suspensful"])
let exampleMovie2 = Movie(id: UUID().uuidString, name: "Travelers", thumbnailURL: URL(string: "https://picsum.photos/200/301")!, categories: ["Dystopian", "Eciting", "Suspensful"])
let exampleMovie3 = Movie(id: UUID().uuidString, name: "Community", thumbnailURL: URL(string: "https://picsum.photos/200/302")!, categories: ["Dystopian", "Eciting", "Suspensful"])
let exampleMovie4 = Movie(id: UUID().uuidString, name: "Alone", thumbnailURL: URL(string: "https://picsum.photos/200/303")!, categories: ["Dystopian", "Eciting", "Suspensful"])
let exampleMovie5 = Movie(id: UUID().uuidString, name: "Hanibal", thumbnailURL: URL(string: "https://picsum.photos/200/304")!, categories: ["Dystopian", "Eciting", "Suspensful"])
let exampleMovie6 = Movie(id: UUID().uuidString, name: "Afterlife", thumbnailURL: URL(string: "https://picsum.photos/200/305")!, categories: ["Dystopian", "Eciting", "Suspensful"])
let goldenCompass = Movie(id: UUID().uuidString, name: "His Dark Materials", thumbnailURL: URL(string: "https://static.wikia.nocookie.net/hdm/images/8/8d/Series_2_Poster.jpg/revision/latest?cb=20201012174347")!, categories: ["Dystopian", "Eciting", "Suspensful"])


let exampleMovies: [Movie] = [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6]
