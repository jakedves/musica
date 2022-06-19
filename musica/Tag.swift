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
        Text(text.uppercased())
            .foregroundColor(.white)
            .padding([.horizontal], 15.0)
            .padding([.vertical], 5.0)
            .background(.purple)
            .cornerRadius(10.0)
            // TODO: add .glass() custom ViewModifier, then change .purple, to clipShape
    }
}

struct Tag_Previews: PreviewProvider {
    static var previews: some View {
        Tag(text: "Guitarist", color: .blue)
    }
}
