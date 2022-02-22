//
//  LandmarkList.swift
//  TurkeyLandmarks
//
//  Created by Franco on 21/02/22.
//

import SwiftUI

struct LandmarkListView: View {
    var landmarks = ["Kadikoy", "Uskudar", "Capadocia", "Peribacalari"]
    var body: some View {
        List{
            ForEach(landmarks, id: \.self){ landmark in
                NavigationLink(destination: LandmarkView(name: landmark)){
                    HStack{
                        Image(landmark.lowercased())
                            .resizable()
                            .frame(width: 30, height: 30)
                            .cornerRadius(2.0)
                        Text(landmark)
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
