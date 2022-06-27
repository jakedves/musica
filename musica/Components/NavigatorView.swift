//
//  NavigatorView.swift
//  musica
//
//  Created by Jake Davies on 20/06/2022.
//

import SwiftUI

struct NavigatorView: View {
    @State var selecting = false
    
    var body: some View {
        GeometryReader { geo in
            
            // get half the screen width
            let length = geo.size.width / 2.0
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    
                    // this is where the buttons should be found
                    ZStack {
                        let largeCenter = length - Constants.largeRadius / 2
                        let short = Constants.largeRadius / 2
                        
                        // some clever trig + adjustment for feel
                        let point = (largeCenter - short) / sqrt(2.0) - 9.0
                        
                        button1
                            .position(x: selecting ? short : largeCenter,
                                      y: largeCenter)
                        button2
                            .position(x: largeCenter,
                                      y: selecting ? short : largeCenter)
                        button3
                            .position(x: selecting ? point : largeCenter,
                                      y: selecting ? point : largeCenter)
                        
                        // main button never moves, only begins navigation
                        mainButton
                            .position(x: largeCenter,
                                      y: largeCenter)
                            .onTapGesture {
                                withAnimation(.spring()) {
                                    selecting.toggle()
                                }
                            }
                        
                    }
                    .frame(width: length, height: length)
                    .padding()
                }
            }
        }
    }
    
    private var mainButton: some View {
        Circle()
            .foregroundColor(.red)
            .frame(width: Constants.largeRadius, height: Constants.largeRadius)
    }
    
    private var button1: some View {
        Circle()
            .foregroundColor(.green)
            .frame(width: Constants.smallRadius, height: Constants.smallRadius)
    }

    private var button2: some View {
        Circle()
            .foregroundColor(.blue)
            .frame(width: Constants.smallRadius, height: Constants.smallRadius)
    }
    
    private var button3: some View {
        Circle()
            .foregroundColor(.orange)
            .frame(width: Constants.smallRadius, height: Constants.smallRadius)
    }
    
    
    private struct Constants {
        static let largeRadius: CGFloat = 80.0
        static let smallRadius: CGFloat = 54.0
    }
}

struct NavigatorView_Previews: PreviewProvider {
    static var previews: some View {
        NavigatorView()
    }
}
