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
            Color.purple.ignoresSafeArea() // TODO: Create BGPatttern Protocol, replace with patterns
            
            VStack {
                profilePicture
                    .frame(width: Constants.photoRadius,
                           height: Constants.photoRadius)
                name
                bio
                tags
                highlights
                allClipsButton.musicaLargeButton(.white)
                Spacer()
                
            }
            .padding()
            
            NavigatorView()
        }
    }
    
    private var name: some View {
        Text("Musician").bold()
    }
    
    private var profilePicture: some View {
        Circle().fill(Color.white)
    }
    
    private var bio: some View {
        Text("This is my bio.").frame(width: Constants.bioWidth)
    }
    
    // TODO: Replace with a TagList view
    private var tags: some View {
        Rectangle().frame(width: 200.0, height: 50.0)
    }
    
    // TODO: Replace with a ProfileHighlights view
    private var highlights: some View {
        HStack {
            Rectangle().aspectRatio(9 / 16, contentMode: .fit)
            Rectangle().aspectRatio(9 / 16, contentMode: .fit)
            Rectangle().aspectRatio(9 / 16, contentMode: .fit)
        }
    }
    
    private var allClipsButton: some View {
        Button("All clips") { }
            .frame(width: 100.0)
            .background(Color.white)
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
