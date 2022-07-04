//
//  Profile.swift
//  musica
//
//  Created by Jake Davies on 19/06/2022.
//

import SwiftUI

struct Profile: View {
    @StateObject var user = ProfileViewModel(id: UUID())
    
    var body: some View {
        ZStack {
            VStack {
                profilePicture
                    .frame(width: Constants.photoRadius,
                           height: Constants.photoRadius)
                HStack(spacing: 2.0) {
                    nameView
                    Image(systemName: user.verified ? Constants.verifiedIcon : "")
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
        Text(user.name).bold()
    }
    
    private var profilePicture: some View {
        // TODO: Fix force unwrapping
        Image(uiImage: UIImage(data: user.image!)!)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .clipShape(Circle())
    }
    
    private var bio: some View {
        Text(user.bio).frame(width: Constants.bioWidth)
    }
    
    private var tagList: some View {
        TagList(user.tags)
    }
    
    // TODO: Replace with a ProfileHighlights view
    private var highlights: some View {
        LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
            ForEach (user.highlightPointers, id: \.self) { pointer in
                Button {
                } label: {
                    Highlight(thumbnailUIImage: ProfileViewModel.getHighlightThumbnail(id: pointer))
                }
            }
        }
        .foregroundColor(.white)
    }
    
    private var allClipsButton: some View {
        Button { } label: { Text("All Clips").musicaLargeButton(.blue) }
    }
    
    private var songBookButton: some View {
        Button {} label: { Text("\(user.name)'s Songbook").musicaLargeButton(.blue) }
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
