//
//  MosqueAssignment.swift
//  SwiftUI-Day-3
//
//  Created by Haider Alboloushi on 8/24/20.
//  Copyright © 2020 Haider. All rights reserved.
//

import SwiftUI

struct MosqueAssignment: View {
    var body: some View {
        NavigationView{
            List(mosques) { mosque in
                NavigationLink(destination: MosqueDetailsView(mosque: mosque)) {
                    MosqueRow(mosque: mosque)
                }
            }
            .navigationBarTitle("مساجد الكويت")
        }
        .accentColor(.white)
    }
}

struct MosqueAssignment_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            MosqueAssignment()
            .previewDisplayName("مساجد الكويت")
            .environment(\.colorScheme, .dark)
            
            MosqueAssignment()
            .previewDisplayName("مساجد الكويت iPhone 8")
            .previewDevice("iPhone 8")
            .environment(\.colorScheme, .dark)
            
            MosqueAssignment()
            .previewDisplayName("مساجد الكويت iPhone SE")
            .previewDevice("iPhone SE (2nd generation)")
            .environment(\.colorScheme, .dark)
            
        }
    }
}

struct MosqueRow: View {
    var mosque: Mosque
    var body: some View {
        HStack{
            Image(mosque.mosqueName)
            .resizable()
            .scaledToFit()
                .frame(width: 130)
            .clipShape(Circle())
            
            VStack(alignment: .leading){
                Text(mosque.mosqueName)
                    .font(.largeTitle)
                Text(mosque.location)
                    .font(.system(size: 25))
            }
        }
        .padding(.vertical)
    }
}
