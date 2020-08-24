//
//  MosqueDetailsView.swift
//  SwiftUI-Day-3
//
//  Created by Haider Alboloushi on 8/24/20.
//  Copyright © 2020 Haider. All rights reserved.
//

import SwiftUI

struct MosqueDetailsView: View {
    var mosque: Mosque
    var body: some View {
        ZStack(alignment: .top){
            VStack{
                ZStack{
                    ZStack{
                        Image(mosque.mosqueName)
                        .resizable()
                        .blur(radius: 2.5)
                        .frame(width: 420, height: 300)
                        .edgesIgnoringSafeArea(.all)
                        
                        Text(mosque.mosqueName)
                        .font(.largeTitle)
                        .foregroundColor(Color.init(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.6514875856)))
                        .bold()
                        .padding(.bottom, 250)
                    }

                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 20){
                            ForEach(mosque.imams, id: \.self){ (character: String) in
                                Image(character).resizable().scaledToFit().frame(width: 160).clipShape(Circle())
                                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                            }
                        }
                    }
                    .offset(x: 0, y: 10)
                }
                
                ScrollView(.vertical, showsIndicators: false){
                    HStack{
                        VStack(spacing: 50){
                            ForEach(prayerTimes, id: \.self){ prayerTime in
                                Text(prayerTime)
                                .font(.title)
                                .fontWeight(.semibold)
                            }
                            .padding(.leading, 70)
                        }
                        Spacer()
                        
                        VStack(spacing: 50){
                            ForEach(prayerTimeofDay, id: \.self){ partOfDay in
                                Text(partOfDay)
                                .font(.title)
                                .fontWeight(.semibold)
                            }
                            .padding(.trailing, 70)
                        
                        }
                    }
                }
            }
        }
    }
}

struct MosqueDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MosqueDetailsView(mosque: mosques[0])
    }
}

