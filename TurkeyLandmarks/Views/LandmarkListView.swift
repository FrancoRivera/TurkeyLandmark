//
//  LandmarkList.swift
//  TurkeyLandmarks
//
//  Created by Franco on 21/02/22.
//

import SwiftUI

struct LandmarkListView: View {
    var landmarks = ["Kadikoy", "Ushkudar", "Capadoccia", "Peribacalari"]
    var body: some View {
        List{
            ForEach(landmarks, id: \.self){ landmark in
                NavigationLink(destination: LandmarkView()){
                    HStack{
                        Image(systemName: "42.circle")
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
