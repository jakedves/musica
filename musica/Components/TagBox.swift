//
//  TagBox.swift
//  musica
//
//  Created by Jake Davies on 20/06/2022.
//

import SwiftUI

struct TagBox: View {
    let tag: Tag
    let action: () -> ()
    
    init(_ tag: Tag, _ action: @escaping () -> () = {}) {
        self.tag = tag
        self.action = action
    }
    
    var body: some View {
        Button(tag.content.uppercased(), action: self.action)
            .foregroundColor(tag.color == .black ? .white : .black)
            .font(.headline)
            .frame(maxWidth: .infinity, minHeight: Constants.boxHeight)
            .background(tag.color)
            .cornerRadius(Constants.radius)
    }
    
    private struct Constants {
        static let boxHeight: CGFloat = 120.0
        static let radius: CGFloat = 15.0
    }
}

struct TagBox_Previews: PreviewProvider {
    static var previews: some View {
        TagBox(Tag("rock", .red))
    }
}
