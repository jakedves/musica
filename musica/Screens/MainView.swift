//
//  MainView.swift
//  musica
//
//  Created by Jake Davies on 28/06/2022.
//

import SwiftUI

struct MainView: View {
    @State private var screen: MusicaScreen = .profile
    
    var body: some View {
        ZStack {
            Color.blue.opacity(0.5).ignoresSafeArea()
            // => Other screen views can have a transparent background
            switch screen {
            case .profile:
                Profile()
            case .explore:
                Explore()
            case .login:
                Login()
            }
            NavigatorView(f1: { setScreen(to: .explore) },
                          f2: { setScreen(to: .profile) },
                          f3: { setScreen(to: .login) })
        }
    }
    
    private enum MusicaScreen {
        case login
        case profile
        case explore
    }
    
    private func setScreen(to screen: MusicaScreen) {
        self.screen = screen
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
