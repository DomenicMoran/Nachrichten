//
//  SafariView.swift
//  News
//
//  Created by Domenic Moran on 6/19/22.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
    
    let url: URL
    
    
    func makeUIViewController(context: Context) -> some SFSafariViewController {
        SFSafariViewController(url: url, entersReaderIfAvailable: true)
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {}
    
}
