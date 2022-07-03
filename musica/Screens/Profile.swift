//
//  Profile.swift
//  musica
//
//  Created by Jake Davies on 19/06/2022.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        ZStack {
            VStack {
                profilePicture
                    .frame(width: Constants.photoRadius,
                           height: Constants.photoRadius)
                name
                bio
                tags
                highlights
                allClipsButton
                songBookButton
                Spacer()
                
            }
            .padding()
        }
    }
    
    private var name: some View {
        Text("Musician").bold()
    }
    
    private var profilePicture: some View {
        Circle().fill(Color.blue)
    }
    
    private var bio: some View {
        Text("This is my bio.").frame(width: Constants.bioWidth)
    }
    
    private var tags: some View {
        TagList()
    }
    
    // TODO: Replace with a ProfileHighlights view
    private var highlights: some View {
        LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
            // ForEach (user.highlights) { highlight in HighlightView(highlight) } 
            Button {
            } label: {
                Highlight()
            }
            Button {
            } label: {
                Highlight()
            }
            Button {
            } label: {
                Highlight()
            }
        }
        .foregroundColor(.white)
    }
    
    private var allClipsButton: some View {
        Button("All clips") { }.musicaLargeButton(.blue)
    }
    
    private var songBookButton: some View {
        Button("Musician's Songbook") { }.musicaLargeButton(.blue)
    }
    
    private struct Constants {
        static let photoRadius: CGFloat = 130.0
        static let bioWidth: CGFloat = 230.0
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
