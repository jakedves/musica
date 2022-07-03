//
//  TagList.swift
//  musica
//
//  Created by Jake Davies on 19/06/2022.
//

import SwiftUI

struct TagList: View {
    let tags: [Tag] = [Tag("rock", .red), Tag("pop", .purple), Tag("jazz", .orange),
                       Tag("guitar", .red), Tag("metal", .black)]
    
    var body: some View {
        LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
            ForEach(tags, id: \.self) { tag in
                TagView(tag: tag)
                    .font(.caption)
            }
        }
    }
}

struct TagList_Previews: PreviewProvider {
    static var previews: some View {
        TagList()
    }
}
