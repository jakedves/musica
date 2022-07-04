//
//  TagView.swift
//  musica
//
//  Created by Jake Davies on 19/06/2022.
//

import SwiftUI

struct TagView: View {
    let tag: (String, Color)
    
    var body: some View {
        ZStack {
            textView
                .padding([.horizontal], Constants.hPadding)
                .padding([.vertical], Constants.vPadding)
                .background(tag.1)
                .cornerRadius(Constants.radius)
                .glass(shadowOpacity: 0.15)
            textView
                .foregroundColor(.white)
        }
    }
    
    var textView: some View {
        Text(tag.0.uppercased())
    }
    
    private struct Constants {
        static let hPadding: CGFloat = 15.0
        static let vPadding: CGFloat = 5.0
        static let radius: CGFloat = 10.0
    }
}

struct Tag_Previews: PreviewProvider {
    static var previews: some View {
        TagView(tag: ("guitar", .red))
    }
}
