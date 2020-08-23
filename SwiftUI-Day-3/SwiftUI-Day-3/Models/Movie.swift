//
//  Movie.swift
//  SwiftUI-Day-3
//
//  Created by Haider Alboloushi on 8/23/20.
//  Copyright © 2020 Haider. All rights reserved.
//

import Foundation
import SwiftUI

struct Movie: Hashable, Identifiable {
    var movieName: String
    var mainCharacters: [String]
    
    var id = UUID()
}

let inlgouriousBasterds = Movie(movieName: "Inglourious Basterds", mainCharacters: ["Lt. Aldo Raine", "Hans Landa", "Donny"])
let shutterIsland = Movie(movieName: "Shutter Island", mainCharacters: ["Teddy Daniels", "Chuck", "Dr. Cawley"])
let inception = Movie(movieName: "Inception", mainCharacters: ["Dom Cobb", "Ariadne", "Mal Cobb"])
let haider = Movie(movieName: "Haider", mainCharacters: ["Haider Meer", "Ghazala", "Arshia"])

let movies = [inlgouriousBasterds, shutterIsland, inception, haider]
