//
//  MusicaLargeButton.swift
//  musica
//
//  Created by Jake Davies on 20/06/2022.
//

import SwiftUI

struct MusicaLargeButton: ViewModifier {
    let color: Color
    
    func body(content: Content) -> some View {
        content
            .padding()
            .foregroundColor(color == .white ? .black : .white)
            .frame(maxWidth: .infinity)
            .background(color)
            //.border(.black, width: 1.0)
            .cornerRadius(15.0)
    }
}

extension View {
    func musicaLargeButton(_ color: Color) -> some View {
        modifier(MusicaLargeButton(color: color))
    }
}
