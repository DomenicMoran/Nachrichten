//
//  EmptyPlaceholderView.swift
//  News
//
//  Created by Domenic Moran on 6/19/22.
//
import SwiftUI

struct EmptyPlaceholderView: View {
    
    let text: String
    let image: Image?
    
    var body: some View {
        VStack(spacing: 8) {
            Spacer()
            if let image = self.image {
                image
                    .imageScale(.large)
                    .font(.system(size: 52))
                    .opacity(0.5)

            }
            Text(text)
                .opacity(0.5)
                .frame(alignment: .center)

            Spacer()
        }
    }
    
}

struct EmptyPlaceholderView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyPlaceholderView(text: "Keine Lesezeichen", image: Image(systemName: "bookmark"))
    }
}
