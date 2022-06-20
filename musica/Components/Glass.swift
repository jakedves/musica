//
//  Glass.swift
//  musica
//
//  Created by Jake Davies on 20/06/2022.
//

import SwiftUI

struct Glass: ViewModifier {
    let contentOpacity: Double
    let shadowOpacity: Double
    let radius: CGFloat
    let distance: CGFloat
    
    func body(content: Content) -> some View {
        content
            .opacity(contentOpacity)
            .shadow(color: .black.opacity(shadowOpacity), radius: radius, x: distance, y: distance)
            .shadow(color: .black.opacity(shadowOpacity), radius: radius, x: -distance, y: -distance)
    }
}

extension View {
    func glass(contentOpacity c: Double = 0.7, shadowOpacity s: Double = 0.35,
               radius r: CGFloat = 10.0, distance d: CGFloat = 3.0) -> some View {
        modifier(Glass(contentOpacity: c, shadowOpacity: s, radius: r, distance: d))
    }
}

struct Glass_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Image("Test")
                .opacity(0.5)
            Tag(text: "Guitarist", color: .red)
        }
    }
}
