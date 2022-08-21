//
//  ContentView.swift
//  News
//
//  Created by Domenic Moran on 6/18/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NewsTabView()
                .tabItem {
                    Label("Nachrichten", systemImage: "newspaper")
                }
            
            SearchTabView()
                .tabItem {
                    Label("Suchen", systemImage: "magnifyingglass")
                }
            
            BookmarkTabView()
                .tabItem {
                    Label("Gespeichert", systemImage: "bookmark")
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
