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
        ZStack {
            ScrollView {
                VStack(spacing: 0.0) {
                    Label(Constants.title, systemImage: Constants.icon)
                        .font(.bold(Font.title2)())
                    LazyVGrid(columns: [GridItem(), GridItem()]) {
                        let tags = engine.getAllTags()
                        ForEach (0..<tags.count, id: \.self) { index in
                            Button {
                                // navigate to a ExplorePage(Explorer(content: tag.0))
                            } label: {
                                TagBox(tags[index])
                            }
                        }
                    }
                    .padding()
                }
            }
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
