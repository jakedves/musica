//
//  Login.swift
//  musica
//
//  Created by Jake Davies on 20/06/2022.
//

import SwiftUI

struct Login: View {
    @ObservedObject private var manager: LoginManager
    
    init(manager: LoginManager) {
        self.manager = manager
    }
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                    logo
                Spacer()
                // TODO: add SFSymbols phone icon
                
                // TODO: Change from NavigationView and Link, space cannot be removed at all due to SwiftUI
                // TODO: Refactor such that NavigationView and Link isn't used, and such that users can still navigate between screens. Maybe button moves up, becomes a back button, logo and other buttons fade away...
                NavigationLink("Sign in with Phone Number") {
                    // Space does get removed when both SignIn and MainView have (true) [not variable]
                    if !manager.loggedIn {
                        SignIn(manager: manager)
                            .navigationBarBackButtonHidden(false)
                            .navigationBarHidden(true)
                    } else {
                        MainView()
                        // this works
                            .navigationBarBackButtonHidden(true)
                            .navigationBarHidden(true)
                    }
                }
                .musicaLargeButton(.blue)
                // navHidden doesn't affect subviews
                
                // TODO: replace with actual Apple button and add functionality
                Button("Sign in with Apple", action: {
                    // manager.appleSignIn()
                })
                .musicaLargeButton(.black)
                Spacer()
            }
            .padding()
        }
    }
    
    private var logo: some View {
        Group {
            Text(Constants.title)
                .font(.system(size: Constants.titleFontSize).bold())
            Text(Constants.tagline)
                .offset(x: 0.0, y: -8.0)
        }
    }
    
    private struct Constants {
        static let title = "Musica"
        static let tagline = "Music by everyone"
        static let titleFontSize = 80.0
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login(manager: LoginManager())
    }
}
