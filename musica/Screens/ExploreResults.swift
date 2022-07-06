//
//  ExploreResults.swift
//  musica
//
//  Created by Jake Davies on 05/07/2022.
//

import SwiftUI

enum ContentType {
    case video
    case profile
}

struct ExploreResults: View {
    @EnvironmentObject private var engine: SearchEngine
    @State private var type: ContentType = .video
    
    var body: some View {
        VStack {
            overlay
            switch type {
            case .video:
                EmptyView() // place video view
            case .profile:
                ProfileCard()
            }
            Spacer()
        }
    }
    
    private var overlay: some View {
        HStack {
            Spacer()
            Text("Videos")
                .bold()
                .underline(type == .video)
                .onTapGesture { self.type = .video }
            Spacer()
            Text("Users")
                .bold()
                .underline(type == .profile)
                .onTapGesture { self.type = .profile }
            Spacer()
        }
        .padding()
    }
}

struct ExploreResults_Previews: PreviewProvider {
    static var previews: some View {
        ExploreResults()
            .environmentObject(SearchEngine())
    }
}
