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
            ZStack {
                VStack {
                    Spacer()
                    Text(Constants.title)
                        .font(.system(size: Constants.titleFontSize).bold())
                    Text(Constants.tagline)
                        .offset(x: 0.0, y: -8.0)
                    Spacer()
                    // TODO: add SFSymbols phone icon into "sign in with phone number"
                    NavigationLink("Sign in with Phone Number") {
                        SignIn(manager: manager)
                            .navigationBarHidden(manager.loggedIn)
                            .navigationBarBackButtonHidden(manager.loggedIn)
                    }.musicaLargeButton(.blue)
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
