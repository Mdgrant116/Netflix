//
//  ContentView.swift
//  Netflix
//
//  Created by Michael Grant on 11/27/20.
//

import SwiftUI

struct ContentView: View {
    var viewModel: HomeViewModel = HomeViewModel()
    let screen = UIScreen.main.bounds
    var body: some View {
        
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            // main vstack
            
            ScrollView(showsIndicators: false){
               
                LazyVStack {
                    TopRowButtons()
                    TopMoviePreview(movie: mandalorian)
                        .frame(width: screen.width)
                        .padding(.top, -110)
                        .zIndex(-1)
                    
                    ForEach(viewModel.allCategories, id: \.self) { category in
                        
                        VStack {
                            
                            HStack {
                                Text(category)
                                    .font(.title3)
                                    .bold()
                                Spacer()
                            }
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack {
                                    ForEach(viewModel.getMovie(forCategory: category)) { movie in
                                        StandardHomeMovie(movie: movie)
                                            .frame(width: 100, height: 200)
                                            .padding(.horizontal, 20)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        .foregroundColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TopRowButtons: View {
    var body: some View {
        HStack {
            Button(action: {
                
            }, label: {
                Image("netflix_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
            })
            
            
            Spacer()
            Button(action: {
                
            }, label: {
                Text("TV Shows")
                    .bold()
            })
            
            Spacer()
            Button(action: {
                
            }, label: {
                Text("Movies")
                    .bold()

            })
            
            Spacer()
            Button(action: {
                
            }, label: {
                Text("My List")
                    .bold()

            })
            
        }
        
        .padding(.leading, 10)
        .padding(.trailing, 30)
    }
}
