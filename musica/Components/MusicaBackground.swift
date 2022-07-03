//
//  MusicaBackground.swift
//  musica
//
//  Created by Jake Davies on 03/07/2022.
//

import SwiftUI

struct MusicaBackground: View {
    var body: some View {
        GeometryReader { geo in
            ZStack {
                Color.gray.opacity(0.3).ignoresSafeArea()
                Group {
                    circle
                        .frame(width: geo.size.width * 0.85, height: geo.size.width * 0.85)
                        .rotation3DEffect(.degrees(80.0), axis: (x: 0.8, y: 0.6, z: 1.0))
                        .position(x: geo.size.width, y: geo.size.height)
                        .opacity(0.75)

                    square
                        .frame(width: geo.size.width * 0.85, height: geo.size.width * 0.85)
                        .rotation3DEffect(.degrees(80.0), axis: (x: 0.8, y: 0.6, z: 1.0))
                        .position(x: geo.size.width * 0.2, y: geo.size.height * 0.3)
                        .opacity(0.75)
                    
                    star
                        .font(Font.system(size: geo.size.width * 0.5))
                        .foregroundColor(.purple)
                        .rotation3DEffect(.degrees(40.0), axis: (x: 0.5, y: 0.2, z: 0.6))
                        .position(x: geo.size.width * 0.90, y: geo.size.height * 0.25)
                        .opacity(0.75)
                }
                .blur(radius: 15.0)
            }
            
        }
        
    }
    
    var circle: some View {
        Circle()
            .foregroundColor(.blue)
    }
    
    var square: some View {
        Rectangle()
            .foregroundColor(.red)
    }
    
    var star: Image {
        Image(systemName: "star.fill")
    }
}

struct MusicaBackground_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MusicaBackground()
            MusicaBackground()
                .preferredColorScheme(.dark)
        }
    }
}
