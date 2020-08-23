//
//  CW9.swift
//  SwiftUI-Day-3
//
//  Created by Haider Alboloushi on 8/23/20.
//  Copyright © 2020 Haider. All rights reserved.
//

import SwiftUI

struct CW9: View {
    var body: some View {
        NavigationView{
            List(movies) { movie in
                NavigationLink(destination: MovieDetailsView(movie: movie)){
                    MovieRow(movie: movie)
                }
            }
        .navigationBarTitle("Movies")
        }
        .accentColor(.white)
    }
}

struct CW9_Previews: PreviewProvider {
    static var previews: some View {
        CW9()
    }
}
