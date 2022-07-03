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
            Constants.dummyThumbnail
            overlay
                .padding([.vertical], Constants.vpad)
                .padding([.horizontal], Constants.hpad)
        }
        .aspectRatio(Constants.aspectRatio, contentMode: .fit)
        .cornerRadius(Constants.highlightCorner)
    }
    
    var likeCount: some View {
        HStack(alignment: .bottom, spacing: Constants.statSpacing) {
            Image(systemName: Constants.statIcon)
                .foregroundColor(.yellow)
            Text(String(Constants.dummyLikes))
        }
    }
    
    var songName: some View {
        Text(Constants.dummySong)
    }
    
    var overlay: some View {
        GeometryReader { geo in
            VStack(alignment: .leading) {
                Image(systemName: "pin.fill")
                    .rotationEffect(.degrees(45.0))
                    .position(x: geo.size.width * 0.9, y: geo.size.height * 0.05)
                likeCount
                songName
            }
            .font(.bold(.caption)())
            .lineLimit(Constants.lineLimit)
        }
    }
    
    private struct Constants {
        // TODO: Remove
        static let dummyLikes = 45
        static let dummySong = "Sweet Child o' Mine"
        static let dummyThumbnail = Color.red
        
        // For positioning
        static let hpad: CGFloat = 8.0
        static let vpad: CGFloat = 5.0
        
        // For overlay properties
        static let lineLimit = 1
        static let statIcon = "star.fill"
        static let statSpacing: CGFloat = 5.0
        
        // For overall view
        static let aspectRatio = 9.0 / 16.0
        static let highlightCorner: CGFloat = 15.0
        
    }
}

struct Highlight_Previews: PreviewProvider {
    static var previews: some View {
        Highlight()
    }
}
