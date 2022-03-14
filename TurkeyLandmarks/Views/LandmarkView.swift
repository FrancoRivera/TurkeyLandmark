//
//  LandmarkView.swift
//  TurkeyLandmarks
//
//  Created by Franco on 21/02/22.
//

import SwiftUI

struct LandmarkView: View {
    @Binding var landmark: Landmark
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
                    if landmark.isFavorite{
                        HStack{
                            Image(systemName: "heart.fill")
                                .foregroundColor(.pink)
                            Text("Favorite Place")
                        }
                    } else{
                        Button("Favorite"){
                            // toggle
                            landmark.isFavorite.toggle()
                        }
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
                Spacer()
                if landmark.isFavorite{
                    Button("Remove from favorites"){
                        landmark.isFavorite = false
                    }
                    .foregroundColor(.red)
                }
            }
            .padding()
            .navigationTitle(landmark.name)
            
        }
    }
}

//struct LandmarkView_Previews: PreviewProvider {
//    @State var landmark = Landmark(Id: 1, name: "fajsldkf", picture: "lfkasjdlf", location: "ldkfjasl;dk", rating: 3.0, description: "lasdjkflas", link: "https://laskdfjasl.com")
//    static var previews: some View {
//        NavigationView{
//            LandmarkView(landmark: $landmark)
//        }
//    }
//}
