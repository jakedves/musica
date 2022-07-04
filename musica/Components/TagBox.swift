//
//  TagBox.swift
//  musica
//
//  Created by Jake Davies on 20/06/2022.
//

import SwiftUI

struct TagBox: View {
    let desc: String
    let color: Color
    
    init(_ tag: (String, Color)) {
        self.desc = tag.0
        self.color = tag.1
    }
    
    var body: some View {
        Text(desc.uppercased())
            .bold()
            .foregroundColor(color == .black ? .white : .black)
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
        TagBox(("rock", .red))
    }
}
