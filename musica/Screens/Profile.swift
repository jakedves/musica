//
//  Profile.swift
//  musica
//
//  Created by Jake Davies on 19/06/2022.
//

import SwiftUI

struct Profile: View {
    let verified = true
    let name = "Jake"
    let tags = [Tag("rock", .red), Tag("pop", .purple), Tag("jazz", .orange),
                Tag("guitar", .red), Tag("metal", .black)]
    
    var body: some View {
        ZStack {
            VStack {
                profilePicture
                    .frame(width: Constants.photoRadius,
                           height: Constants.photoRadius)
                HStack(spacing: 2.0) {
                    nameView
                    Image(systemName: verified ? Constants.verifiedIcon : "")
                        .foregroundColor(.yellow)
                }
                .font(.title3)
                bio
                tagList
                highlights
                allClipsButton
                songBookButton
                Spacer()
                
            }
            .padding()
        }
    }
    
    private var nameView: some View {
        Text(name).bold()
    }
    
    private var profilePicture: some View {
        Image("Test")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .clipShape(Circle())
        //Circle().fill(Color.blue)
    }
    
    private var bio: some View {
        Text("This is my bio.").frame(width: Constants.bioWidth)
    }
    
    private var tagList: some View {
        TagList(tags)
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
        Button { } label: { Text("All Clips").musicaLargeButton(.blue) }
    }
    
    private var songBookButton: some View {
        Button {} label: { Text("\(name)'s Songbook").musicaLargeButton(.blue) }
    }
    
    private struct Constants {
        static let photoRadius: CGFloat = 130.0
        static let bioWidth: CGFloat = 230.0
        static let verifiedIcon = "star.fill"
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
