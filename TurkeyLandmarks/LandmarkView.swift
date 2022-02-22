//
//  LandmarkView.swift
//  TurkeyLandmarks
//
//  Created by Franco on 21/02/22.
//

import SwiftUI

struct LandmarkView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20.0) {
                Image(systemName: "42.circle")
                    .resizable()
                    .frame(width: .infinity, height: 200)
                Text("Title")
                    .bold()
                Text("Kadikoy")
                    .bold()
                Text("Location")
                Text("Istanbul, Turkey")
                Text("Description")
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
            }
        }
    }
}

struct LandmarkView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkView()
    }
}
