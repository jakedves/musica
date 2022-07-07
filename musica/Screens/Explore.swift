//
//  Explore.swift
//  musica
//
//  Created by Jake Davies on 20/06/2022.
//

import SwiftUI

struct Explore: View {
    @EnvironmentObject private var engine: SearchEngine
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: [GridItem(), GridItem()]) {
                    let tags = engine.getAllTags()
                    ForEach (0..<tags.count, id: \.self) { index in
                        NavigationLink(destination: ExploreResults(), label: {
                            TagBox(tags[index])
                        })
                    }
                }
                .padding([.horizontal])
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    title
                }
            }
        }
    }
    
    private var title: some View {
        HStack {
            Image(systemName: Constants.icon)
                .font(.bold(Font.title2)())
            Text(Constants.title)
                .font(.bold(Font.title)())
        }
    }
    
    private struct Constants {
        static let title = "Explore"
        static let icon = "magnifyingglass"
    }
}


struct Explore_Previews: PreviewProvider {
    static var previews: some View {
        Explore()
            .environmentObject(SearchEngine())
    }
}
