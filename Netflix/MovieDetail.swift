//
//  MovieDetail.swift
//  Netflix
//
//  Created by Michael Grant on 11/28/20.
//

import SwiftUI

struct MovieDetail: View {
    
    var movie: Movie
    let screen = UIScreen.main.bounds
    
    @Binding var movieDetailToShow: Movie?
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        movieDetailToShow = nil
                    }, label: {
                        Image(systemName: "xmark.circle")
                            .font(.system(size: 26))
                            
                    })
                    
                }
                .padding(.horizontal, 22)
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        StandardHomeMovie(movie: movie)
                    }
                    .frame(width: screen.width / 2.5)
                    
                    MovieInfoSubHeadline(movie: movie)
                    
                    if movie.promtionHeadline != nil {
                        Text(movie.promtionHeadline!)
                            .bold()
                            .font(.headline)
                    }
                }
                Spacer()
            }
            .foregroundColor(.white)
        }
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: lovecraftCountry, movieDetailToShow: .constant(nil))
    }
}

struct MovieInfoSubHeadline: View {
    var movie: Movie

    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            Text(String(movie.year))
            RatingsView(rating: movie.rating)
            Text(movie.numberOfSeasonsDisplay)
            
        }
        .foregroundColor(.gray)
        .padding(.vertical, 6)
    }
}

struct RatingsView: View {
    var rating: String
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.gray)
            Text(rating)
                .foregroundColor(.white)
                .font(.system(size: 12))
                .bold()
        }
        .frame(width: 50, height: 20)
    }
    
}
