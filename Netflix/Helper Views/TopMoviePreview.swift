//
//  TopMoviePreview.swift
//  Netflix
//
//  Created by Michael Grant on 11/27/20.
//

import SwiftUI
import KingfisherSwiftUI
struct TopMoviePreview: View {
    var movie: Movie
    
    func isCategoryLast(_ category: String) -> Bool {
        let categoryCount = movie.categories.count
        if let index = movie.categories.firstIndex(of: category) {
            if index + 1 != categoryCount {
                return false
            }
        }
        return true
    }
    var body: some View {
        ZStack {
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
            
            VStack {
                Spacer()
                HStack {
                    ForEach(movie.categories, id: \.self) {  category in
                        HStack {
                            Text(category)
                                .font(.footnote)

                            if !isCategoryLast(category) {
                                Image(systemName: "circle.fill")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 3))
                            }

                        }
                    }

                    
                }
                HStack {
                    Spacer()
                    SmallVerticalButton(text: "My List",
                                        isOnImage: "checkmark",
                                        isOffImage: "plus",
                                        isOn: true) {
                        
                    }
                    Spacer()
                    WhiteButton(text: "Play",
                                imageName: "play.fill") {
                        
                    }
                    .frame(width: 120)
                    Spacer()
                    SmallVerticalButton(text: "Info",
                                        isOnImage: "info.circle",
                                        isOffImage: "info.circle",
                                        isOn: true) {
                        
                    }
                    Spacer()
                }
                .padding(.top, 3.0)
            }

            .background(LinearGradient.blackOpacityGradient)
                .padding(.top, 200)
            
        }
        .foregroundColor(.white)
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie: exampleMovie1)
    }
}