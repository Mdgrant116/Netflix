//
//  MoreLikeThis.swift
//  Netflix
//
//  Created by Michael Grant on 12/5/20.
//

import SwiftUI

struct MoreLikeThis: View {
    var movies: [Movie]
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(0..<movies.count) { index in
                    StandardHomeMovie(movie: movies[index])
                }}
                
            
            .foregroundColor(.white)
        }
    }
}

struct MoreLikeThis_Previews: PreviewProvider {
    
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            MoreLikeThis(movies: freshsReccomended)
        }
    }
}
