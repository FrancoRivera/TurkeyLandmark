//
//  ContentView.swift
//  TurkeyLandmarks
//
//  Created by Franco on 21/02/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            LandmarkListView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
