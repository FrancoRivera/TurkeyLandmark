//
//  LaunchScreen.swift
//  TurkeyLandmarks
//
//  Created by Franco on 14/03/22.
//

import SwiftUI

struct LaunchScreen: View {
    var body: some View {
        VStack{
            Spacer()
            Text("Discover the landmarks from Turkey")
                .font(.title)
                .bold()
            Spacer()
            ProgressView()
                .progressViewStyle(.circular)
        }
    }
}

struct LaunchScreen_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreen()
    }
}
