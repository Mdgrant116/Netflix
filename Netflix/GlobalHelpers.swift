//
//  GlobalHelpers.swift
//  Netflix
//
//  Created by Michael Grant on 11/27/20.
//

import Foundation
import SwiftUI

let exampleMovie1 = Movie(id: UUID().uuidString, name: "DARK", thumbnailURL: URL(string: "https://picsum.photos/200/300")!, categories: ["Dystopian", "Exciting", "Suspensful"])
let exampleMovie2 = Movie(id: UUID().uuidString, name: "Travelers", thumbnailURL: URL(string: "https://picsum.photos/200/301")!, categories: ["Dystopian", "Exciting", "Suspensful"])
let exampleMovie3 = Movie(id: UUID().uuidString, name: "Community", thumbnailURL: URL(string: "https://picsum.photos/200/302")!, categories: ["Dystopian", "Exciting", "Suspensful"])
let exampleMovie4 = Movie(id: UUID().uuidString, name: "Alone", thumbnailURL: URL(string: "https://picsum.photos/200/303")!, categories: ["Dystopian", "Exciting", "Suspensful"])
let exampleMovie5 = Movie(id: UUID().uuidString, name: "Hanibal", thumbnailURL: URL(string: "https://picsum.photos/200/304")!, categories: ["Dystopian", "Exciting", "Suspensful"])
let exampleMovie6 = Movie(id: UUID().uuidString, name: "Afterlife", thumbnailURL: URL(string: "https://picsum.photos/200/305")!, categories: ["Dystopian", "Exciting", "Suspensful"])
let goldenCompass = Movie(id: UUID().uuidString, name: "His Dark Materials", thumbnailURL: URL(string: "https://static.wikia.nocookie.net/hdm/images/8/8d/Series_2_Poster.jpg/revision/latest?cb=20201012174347")!, categories: ["Fresh's Favorite", "Dystopian", "Exciting", "Suspensful"])
let mandalorian = Movie(id: UUID().uuidString, name: "The Mandalorian", thumbnailURL: URL(string: "https://cnet2.cbsistatic.com/img/ODyew_z7sH3ZR2bw4vNGRidielo=/940x0/2020/09/17/d7398858-64f8-4c3e-8744-20ec853c8d01/eh9iqoxxcaevre1.jpg"
)!, categories: ["Fresh's Favorite", "Not Terrible Star Wars", "Exciting"])
let lovecraftCountry = Movie(id: UUID().uuidString, name: "Lovecraft Country", thumbnailURL: URL(string: "https://miro.medium.com/max/3072/1*9VrXs2JviF6XMDWvTscrKA.jpeg"
)!, categories: ["Fresh's Favorite", "Not Terrible Star Wars", "Exciting"])


let exampleMovies: [Movie] = [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6]

let freshsReccomended: [Movie] = [goldenCompass, lovecraftCountry, mandalorian]

extension LinearGradient {
    static let blackOpacityGradient =  LinearGradient(
        gradient: Gradient(colors: [Color.black.opacity(0),
                    Color.black.opacity(0.95)]),
                    startPoint: .top,
                    endPoint: .bottom
    )
    
}
