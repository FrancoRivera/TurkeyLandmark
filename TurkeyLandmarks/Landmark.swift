//
//  Landmark.swift
//  TurkeyLandmarks
//
//  Created by Franco on 22/02/22.
//

import Foundation

struct Landmark: Hashable {
    var Id: Int
    var name: String
    var picture: String
    var location: String
    var rating: Float
    var description: String
    var link: String
    var isFavorite: Bool = false
}

