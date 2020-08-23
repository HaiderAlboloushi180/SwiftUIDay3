//
//  ContentView.swift
//  SwiftUI-Day-3
//
//  Created by Haider Alboloushi on 8/23/20.
//  Copyright © 2020 Haider. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            Text("WRONG FILE")
    }
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//struct MovieRow: View {
//    var movie: Movie
//    var body: some View {
//        HStack(alignment: .center){
//            Image(movie.movieName)
//                .resizable()
//                .scaledToFit()
//                .frame(height: 100)
//                .clipShape(Circle())
//
//            VStack(alignment: .leading){
//                Text(movie.movieName)
//                    .font(.largeTitle)
//                Text(movie.mainCharacters
//                    .joined(separator: ", "))
//            }
//        }
//        .padding(.vertical)
//    }
//}
