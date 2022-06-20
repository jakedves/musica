//
//  TagBox.swift
//  musica
//
//  Created by Jake Davies on 20/06/2022.
//

import SwiftUI

struct TagBox: View {
    let tag: String
    let color: Color
    
    var body: some View {
        Text(tag.capitalized)
            .bold()
            .frame(maxWidth: .infinity, minHeight: Constants.boxHeight)
            .background(color)
            .cornerRadius(Constants.radius)
    }
    
    private struct Constants {
        static let boxHeight: CGFloat = 120.0
        static let radius: CGFloat = 15.0
    }
}

struct TagBox_Previews: PreviewProvider {
    static var previews: some View {
        TagBox(tag: "rock", color: .red)
    }
}
