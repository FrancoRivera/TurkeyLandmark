//
//  LandmarkList.swift
//  TurkeyLandmarks
//
//  Created by Franco on 21/02/22.
//

import SwiftUI

struct LandmarkListView: View {
    @State var landmarks = [
        Landmark(Id: 1, name: "Kadikoy", picture: "kadikoy", location: "Istanbul", rating: 3.0, description: "this is the description for Kadikoy", link: "https://www.tripadvisor.com.pe/Attraction_Review-g293974-d13326983-Reviews-Kadikoy-Istanbul.html"),
        Landmark(Id: 2, name: "Uskudar", picture: "uskudar", location: "Istanbul", rating: 4.0, description: "this is the description for Uskudar", link: "https://link.to/tripadvisor"),
        Landmark(Id: 3, name: "Cappadocia", picture: "cappadocia", location: "West Turkey", rating: 2.4, description: "this is the description for Capadocia", link: "https://www.tripadvisor.com.pe/Tourism-g297980-Cappadocia-Vacations.html"),
        Landmark(Id: 4, name: "Kura Peribacalari", picture: "peribacalari", location: "West Turkey", rating: 3.4, description: "this is the description for Peribacalari", link: "https://www.tripadvisor.com.pe/Attraction_Review-g2018545-d11770141-Reviews-Kula_Peribacalari-Kula_Manisa_Province.html"),
    ]
    @State var landmarkEditable =    Landmark(Id: 1, name: "Kadikoy", picture: "kadikoy", location: "Istanbul", rating: 3.0, description: "this is the description for Kadikoy", link: "https://www.tripadvisor.com.pe/Attraction_Review-g293974-d13326983-Reviews-Kadikoy-Istanbul.html")

    var body: some View {
        List{
            ForEach(landmarks, id: \.self){ landmark in
                NavigationLink(destination: LandmarkView(landmark: $landmarks[landmark.Id-1])){
                    HStack{
                        Image(landmark.picture.lowercased())
                            .resizable()
                            .frame(width: 30, height: 30)
                            .cornerRadius(2.0)
                        Text(landmark.name)
                    }
                }
            }
        }
        .navigationTitle("Landmarks")
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            LandmarkListView()
        }
    }
}
