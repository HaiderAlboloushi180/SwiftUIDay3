//
//  ScrollView.swift
//  SwiftUI-Day-3
//
//  Created by Haider Alboloushi on 8/24/20.
//  Copyright © 2020 Haider. All rights reserved.
//

import SwiftUI

struct ScrollView: View {
    var body: some View {
        ZStack{
            ScrollView(.horizontal){
                HStack(spacing: 0){
                    Image("Lt. Aldo Raine").resizable().scaledToFit()
                    Image("Hans Landa").resizable().scaledToFit()
                    Image("Donny").resizable().scaledToFit()
                    Image("Dom Cobb").resizable().scaledToFit()
                    Image("Chuck").resizable().scaledToFit()
                }
            }
            .edgesIgnoringSafeArea(.all)
            .background(Color.black.edgesIgnoringSafeArea(.all))
        }
    }
}

struct ScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView()
    }
}
