//
//  SearchHistoryListView.swift
//  News
//
//  Created by Domenic Moran on 6/19/22.
//

import SwiftUI

struct SearchHistoryListView: View {
    
    @ObservedObject var searchVM: ArticleSearchViewModel
    let onSubmit: (String) -> ()
    
    var body: some View {
        List {
            HStack {
                Text("Kürzlich gesucht")
                Spacer()
                Button("Leeren") {
                    searchVM.removeAllHistory()
                }
                .foregroundColor(.accentColor)
            }
            .listRowSeparator(.hidden)
            
            ForEach(searchVM.history, id: \.self) { history in
                Button(history) {
                    onSubmit(history)
                }
                .swipeActions {
                    Button(role: .destructive) {
                        searchVM.removeHistory(history)
                    } label: {
                        Label("Löschen", systemImage: "trash")
                    }
                }
            }
        }
        .listStyle(.plain)
    }
}

struct SearchHistoryListView_Previews: PreviewProvider {
    static var previews: some View {
        SearchHistoryListView(searchVM: ArticleSearchViewModel.shared) { _ in
            
        }
    }
}
