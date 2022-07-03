//
//  Highlight.swift
//  musica
//
//  Created by Jake Davies on 02/07/2022.
//

import SwiftUI

struct Highlight: View {
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            // Image(): Thumbnail for the video, for now Color.red at 16:9 ratio
            Color.red
            overlay
                .padding([.vertical], 5.0)
                .padding([.horizontal], 8.0)
        }
        .aspectRatio(9.0 / 16.0, contentMode: .fit)
        .cornerRadius(15.0)
    }
    
    var likeCount: some View {
        HStack(alignment: .bottom, spacing: 5.0) {
            Image(systemName: "star.fill")
                .foregroundColor(.yellow)
            Text(String(Dummy.likes))
        }
    }
    
    var songName: some View {
        Text(Dummy.song)
    }
    
    var overlay: some View {
        VStack(alignment: .leading) {
            likeCount
            songName
        }
        .font(.bold(.caption)())
        .lineLimit(1)
    }
    
    private struct Dummy {
        static let likes = 45
        static let song = "Sweet Child o' Mine"
    }
}

struct Highlight_Previews: PreviewProvider {
    static var previews: some View {
        Highlight()
    }
}
