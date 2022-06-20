//
//  Tag.swift
//  musica
//
//  Created by Jake Davies on 19/06/2022.
//

import SwiftUI

struct Tag: View {
    let text: String
    let color: Color
    
    var body: some View {
        ZStack {
            textView
                .padding([.horizontal], Constants.hPadding)
                .padding([.vertical], Constants.vPadding)
                .background(color)
                .cornerRadius(Constants.radius)
                .glass()
            textView
                .foregroundColor(.white)
        }
    }
    
    var textView: some View {
        Text(text.uppercased())
    }
    
    private struct Constants {
        static let hPadding: CGFloat = 15.0
        static let vPadding: CGFloat = 5.0
        static let radius: CGFloat = 10.0
    }
}

struct Tag_Previews: PreviewProvider {
    static var previews: some View {
        Tag(text: "Guitarist", color: .blue)
    }
}
