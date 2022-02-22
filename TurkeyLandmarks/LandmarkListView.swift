//
//  LandmarkList.swift
//  TurkeyLandmarks
//
//  Created by Franco on 21/02/22.
//

import SwiftUI

struct LandmarkListView: View {
    var body: some View {
        List{
            NavigationLink(destination: LandmarkView()){
                HStack{
                    Image(systemName: "42.circle")
                    Text("Kadikoy")
                }
            }
            NavigationLink(destination: LandmarkView()){
                HStack{
                    Image(systemName: "42.circle")
                    Text("Ushkudar")
                }
            }
            NavigationLink(destination: LandmarkView()){
                HStack{
                    Image(systemName: "42.circle")
                    Text("Capadocia")
                }
            }
            NavigationLink(destination: LandmarkView()){
                HStack{
                    Image(systemName: "42.circle")
                    Text("Peribacalari")
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
