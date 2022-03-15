//
//  ContentView.swift
//  TurkeyLandmarks
//
//  Created by Franco on 21/02/22.
//

import SwiftUI

struct ContentView: View {
    @State var isLoading = true
    var body: some View {
        if isLoading {
            LaunchScreen()
                .onAppear {
//                    loadLandmarks()
//                    isLoading.false
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                        withAnimation(.easeInOut(duration: 0.6)) {
                            self.isLoading = false;
                        }
                    }
                }
        }
        else{
            NavigationView{
                LandmarkListView()
                // TODO: Navigation
                // TODO: Filters is favorite or not
                // TODO: Add new landmarks from the app
                // ---------------
                // DONE: App Design/Icons and Launchscreen
                // TODO: Animations
                // ---------------
                // APIs...
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
