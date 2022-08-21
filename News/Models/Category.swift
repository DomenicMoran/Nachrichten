//
//  Category.swift
//  News
//
//  Created by Domenic Moran on 6/19/22.
//

import Foundation

enum Category: String, CaseIterable {
    case general
    case business
    case technology
    case entertainment
    case sports
    case science
    case health
    
    var text: String {

        if self == .general {
            return "Schlagzeilen"
        } else if self == .business {
            return "Business"
        } else if self == .technology {
            return "Technologie"
        } else if self == .entertainment {
            return "Unterhaltung"
        }  else if self == .sports {
         return "Sport"
        }  else if self == .science {
         return "Wissenschaft"
        }  else if self == .health {
         return "Gesundheit"
        } else {
            return "Nachrichten"
        }
    }
}

extension Category: Identifiable {
    var id: Self { self }
}
