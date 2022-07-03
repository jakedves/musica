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
            // Color.purple.ignoresSafeArea() // TODO: Create BGPatttern Protocol, replace with patterns
            
            VStack {
                profilePicture
                    .frame(width: Constants.photoRadius,
                           height: Constants.photoRadius)
                name
                bio
                tags
                highlights
                allClipsButton.musicaLargeButton(.blue)
                songBookButton.musicaLargeButton(.blue)
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
        HStack {
            Highlight()
            Highlight()
            Highlight()
        }
    }
    
    private var allClipsButton: some View {
        Button("All clips") { }
    }
    
    private var songBookButton: some View {
        Button("User's Songbook") { }
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
