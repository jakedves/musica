//
//  TagList.swift
//  musica
//
//  Created by Jake Davies on 19/06/2022.
//

import SwiftUI

struct TagList: View {
    let tags: [(String, Color)]
    
    init(_ tags: [(String, Color)]) {
        self.tags = tags
    }
    
    var body: some View {
        LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
            ForEach(0..<tags.count, id: \.self) { index in
                TagView(tag: tags[index])
                    .font(.caption)
            }
        }
    }
}

struct TagList_Previews: PreviewProvider {
    static var previews: some View {
        TagList([("rock", .red), ("pop", .purple), ("jazz", .orange),
                 ("guitar", .red), ("metal", .black)])
    }
}
