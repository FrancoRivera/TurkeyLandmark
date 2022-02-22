//
//  LandmarkView.swift
//  TurkeyLandmarks
//
//  Created by Franco on 21/02/22.
//

import SwiftUI

struct LandmarkView: View {
    var name: String
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20.0) {
                Image(name.lowercased())
                    .resizable()
                    .frame(width: .infinity, height: 200)
                    .cornerRadius(10)
                VStack(alignment: .leading, spacing: 10.0){
                Text("Location")
                    .bold()
                Text("Istanbul, Turkey")
                }
                VStack(alignment: .leading, spacing: 10.0){
                Text("Description")
                    .bold()
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                }
            }
            .padding()
            .navigationTitle(name)
            
//        TODO: Add Rating Stars.
//        TODO: Add link to TripAdvisor or similar.
//        TODO: Add new landmarks from the app
            
        }
    }
}

struct LandmarkView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            LandmarkView(name: "Kadikoy")
        }
    }
}
