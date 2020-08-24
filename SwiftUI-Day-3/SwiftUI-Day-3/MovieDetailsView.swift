//
//  MovieDetailsView.swift
//  SwiftUI-Day-3
//
//  Created by Haider Alboloushi on 8/23/20.
//  Copyright © 2020 Haider. All rights reserved.
//

// MARK: - All CWs are combined, except for 8 and 9 -

import SwiftUI

struct MovieDetailsView: View {
    var movie: Movie
    var body: some View {
        ZStack{
            MovieBG(movie: movie)
            
            VStack{
                VStack(alignment: .center){
                    Image(movie.movieName)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 300)
                        .overlay(Circle().stroke(Color.white, lineWidth: 6))
                    
                    Text(movie.movieName)
                        .font(.system(size: 35))
                        .bold()
                        .foregroundColor(.white)
                    Text(movie.mainCharacters.joined(separator: ", "))
                        .font(.title)
                        .foregroundColor(.white)
                    Spacer()
                }
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 20){
                        ForEach(movie.mainCharacters, id: \.self){ (character: String) in
                            Image(character).resizable().scaledToFit().frame(width: 160).clipShape(Circle())
                                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                        }
                    }
                }
                .padding(.vertical)
                .foregroundColor(.white)
                .shadow(radius: 8)
            }
        }
    }
}

struct MovieDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailsView(movie: movies[0])
    }
}

struct MovieBG: View {
    var movie: Movie
    var body: some View {
        Group{
            Color.black.opacity(0.3)
                .background(Image(movie.movieName)
                    .resizable()
                    .scaledToFit()
                    .blur(radius: 40))
        }
        .edgesIgnoringSafeArea(.all)
    }
}
