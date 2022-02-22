//
//  LandmarkView.swift
//  TurkeyLandmarks
//
//  Created by Franco on 21/02/22.
//

import SwiftUI

struct LandmarkView: View {
    var landmark: Landmark
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20.0) {
                Image(landmark.picture.lowercased())
                    .resizable()
                    .frame(width: .infinity, height: 200)
                    .cornerRadius(10)
                HStack {
                    HStack(alignment: .center, spacing: 10.0){
                        Image(systemName: "mappin")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20.0, height: 20.0)
                            .foregroundColor(Color.red)
                        
                        Text("Istanbul, Turkey")
                            .font(.title3)
                    }
                    Spacer()
                    HStack{
                        Image(systemName: "heart.fill")
                            .foregroundColor(.pink)
                        Text("Favorite Place")
                    }
                }
                HStack{
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Image(systemName: "star.leadinghalf.filled")
                        .foregroundColor(.yellow)
                    Text("\(landmark.rating)/5")
                        .font(.callout)
                        .foregroundColor(.gray)
                }
                VStack(alignment: .leading, spacing: 10.0){
                    Text("Description")
                        .bold()
                    Text(landmark.description)
                }
                Link("See on Trip Advisor", destination: URL(string: landmark.link)!)
            }
            .padding()
            .navigationTitle(landmark.name)
            
//        TODO: Add Rating Stars.
//        TODO: Add link to TripAdvisor or similar.
//        TODO: Favorite a landmark
//        TODO: Add new landmarks from the app
            
        }
    }
}

struct LandmarkView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            LandmarkView(landmark: landmarks[0])
        }
    }
}
