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
}

// ["Kadikoy", "Uskudar", "Capadocia", "Peribacalari"]
var landmarks = [
    Landmark(Id: 1, name: "Kadikoy", picture: "kadikoy", location: "Istanbul", rating: 3.0, description: "this is the description for Kadikoy", link: "https://www.tripadvisor.com.pe/Attraction_Review-g293974-d13326983-Reviews-Kadikoy-Istanbul.html"),
    Landmark(Id: 2, name: "Uskudar", picture: "uskudar", location: "Istanbul", rating: 4.0, description: "this is the description for Uskudar", link: "https://link.to/tripadvisor"),
    Landmark(Id: 3, name: "Cappadocia", picture: "cappadocia", location: "West Turkey", rating: 2.4, description: "this is the description for Capadocia", link: "https://www.tripadvisor.com.pe/Tourism-g297980-Cappadocia-Vacations.html"),
    Landmark(Id: 4, name: "Kura Peribacalari", picture: "peribacalari", location: "West Turkey", rating: 3.4, description: "this is the description for Peribacalari", link: "https://www.tripadvisor.com.pe/Attraction_Review-g2018545-d11770141-Reviews-Kula_Peribacalari-Kula_Manisa_Province.html"),
]
