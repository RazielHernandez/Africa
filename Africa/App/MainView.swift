//
//  MainView.swift
//  Africa
//
//  Created by Raziel Hernandez on 2024-06-14.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView() {
            ContentView()
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                    Text("Browse")
                }
            VideoListView()
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("Watch")
                }
            MapView()
                .tabItem {
                    Image(systemName: "map")
                    Text("Locations")
                }
            GalleryView()
                .tabItem {
                    Image(systemName: "photo")
                    Text("Gallery")
                }
            
        }
    }
}

#Preview {
    MainView()
}
