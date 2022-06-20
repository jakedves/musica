//
//  Explore.swift
//  musica
//
//  Created by Jake Davies on 20/06/2022.
//

import SwiftUI

struct Explore: View {
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(), GridItem()]) {
                ForEach (AppData.tags, id: \.self) { tag in
                    TagBox(tag)
                }
            }
            .padding()
        }
        
    }
}


struct Explore_Previews: PreviewProvider {
    static var previews: some View {
        Explore()
    }
}
