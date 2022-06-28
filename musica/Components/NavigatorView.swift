//
//  NavigatorView.swift
//  musica
//
//  Created by Jake Davies on 20/06/2022.
//

import SwiftUI

// A NavigatorView is a view that should always be used such that it takes up the full screen space,
// not including the safe area. This is for the GeometryReader to be able to determine the correct size
// for the frame surrounding the buttons. This size is used to determine the distance they move away from
// the large button, which begins navigation.
struct NavigatorView: View {
    @State var selecting = false
    let function1: () -> ()
    let function2: () -> ()
    let function3: () -> ()
    
    init(f1: @escaping () -> () = {}, f2: @escaping () -> () = {}, f3: @escaping () -> () = {}) {
        self.function1 = f1
        self.function2 = f2
        self.function3 = f3
    }
    
    var body: some View {
        GeometryReader { geo in
            
            // get half the screen width, and scale to 95% (buttons too far otherwise)
            let length = geo.size.width * 0.5 * 0.95
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    
                    // when doing absolute positioning in SwiftUI, we should acknowledge the coordinate space
                    // is as follows:
                    //
                    // -------------> x
                    // |
                    // |
                    // |
                    // |
                    // \/
                    // y
                    ZStack {
                        let largeCenter = length - Constants.largeRadius / 2.0
                        let point = (largeCenter - Constants.shortDistance) / sqrt(2.0) - 9.0
                        
                        NavigationSmallButton(color: .green, function: function1, binding: $selecting)
                            .position(x: selecting ? Constants.shortDistance : largeCenter,
                                      y: largeCenter)
                        NavigationSmallButton(color: .blue, function: function2, binding: $selecting)
                            .position(x: largeCenter,
                                      y: selecting ? Constants.shortDistance : largeCenter)
                        NavigationSmallButton(color: .orange, function: function3, binding: $selecting)
                            .position(x: selecting ? point : largeCenter,
                                      y: selecting ? point : largeCenter)
                        
                        // main button never moves, only begins navigation
                        mainButton
                            .position(x: largeCenter,
                                      y: largeCenter)
                            .onTapGesture {
                                withAnimation(.interactiveSpring()) {
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
    
    private struct NavigationSmallButton: View {
        let color: Color
        let function: () -> ()
        @Binding var binding: Bool
        
        var body: some View {
            Button {
                function()
                withAnimation(.interactiveSpring()) {
                    binding.toggle()
                }
            } label: {
                Circle()
                    .foregroundColor(color)
                    .frame(width: Constants.smallRadius, height: Constants.smallRadius)
            }
        }
    }
    
    private struct Constants {
        static let largeRadius: CGFloat = 80.0
        static let smallRadius: CGFloat = 54.0
        static let shortDistance = Constants.largeRadius / 2.0
    }
}

struct NavigatorView_Previews: PreviewProvider {
    static var previews: some View {
        NavigatorView()
    }
}
