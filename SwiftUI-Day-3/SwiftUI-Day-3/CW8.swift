//
//  CW8.swift
//  SwiftUI-Day-3
//
//  Created by Haider Alboloushi on 8/23/20.
//  Copyright © 2020 Haider. All rights reserved.
//

import SwiftUI

struct CW8: View {
    var body: some View {
        NavigationView{
            List{
                NavigationLink(destination: MovieDetailsView(movie: movies[0])){
                    MovieRow(movie: movies[0])
                }
                NavigationLink(destination: MovieDetailsView(movie: movies[1])){
                    MovieRow(movie: movies[1])
                }
                NavigationLink(destination: MovieDetailsView(movie: movies[2])){
                    MovieRow(movie: movies[2])
                }
                NavigationLink(destination: MovieDetailsView(movie: movies[3])){
                    MovieRow(movie: movies[3])
                }
            }
        .navigationBarTitle("Movies")
        }
    }
}

struct CW8_Previews: PreviewProvider {
    static var previews: some View {
        CW8()
    }
}

struct MovieRow: View {
    var movie: Movie
    var body: some View {
        HStack(alignment: .center){
            Image(movie.movieName)
                .resizable()
                .scaledToFit()
                .frame(height: 100)
                .clipShape(Circle())
            
            VStack(alignment: .leading){
                Text(movie.movieName)
                    .font(.largeTitle)
                Text(movie.mainCharacters
                    .joined(separator: ", "))
            }
        }
        .padding(.vertical)
    }
}

