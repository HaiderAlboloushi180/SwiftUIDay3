//
//  Mosque.swift
//  SwiftUI-Day-3
//
//  Created by Haider Alboloushi on 8/24/20.
//  Copyright © 2020 Haider. All rights reserved.
//

import Foundation
import SwiftUI

struct Mosque: Hashable, Identifiable {
    var mosqueName: String
    var location: String
    var imams: [String]
    
    var id = UUID()
}

let alkabeer = Mosque(mosqueName: "مسجد الكبير", location: "مدينة الكويت", imams: ["نبيل العوضي", "مشاري العفاسي", "فهد الكندري"])
let almuzaini = Mosque(mosqueName: "مسجد المزيني", location: "مدينة الكويت", imams: ["نبيل العوضي", "مشاري العفاسي", "فهد الكندري"])
let alimamsadiq = Mosque(mosqueName: "مسجد الامام الصادق", location: "مدينة الكويت", imams: ["نبيل العوضي", "مشاري العفاسي", "فهد الكندري"])

let mosques = [alkabeer, almuzaini, alimamsadiq]
