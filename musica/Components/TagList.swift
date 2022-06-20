//
//  TagList.swift
//  musica
//
//  Created by Jake Davies on 19/06/2022.
//

import SwiftUI

struct TagList: View {
    let tags: [String]
    
    var body: some View {
        Text("Remove me")
// TODO:
//        ForEach (tags) { tag in
//            Tag(text: tag, color: .blue)
//        }
    }
}

struct TagList_Previews: PreviewProvider {
    static var previews: some View {
        TagList(tags: ["Guitar", "Piano", "Composition", "Heavy metal", "Orchestral"])
    }
}
