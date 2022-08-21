//
//  NewsApp.swift
//  News
//
//  Created by Domenic Moran on 6/18/22.
//

import SwiftUI

@main
struct NewsApp: App {
    
    @StateObject var articleBookmarkVM = ArticleBookmarkViewModel.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(articleBookmarkVM)
        }
    }
}
