//
//  SignIn.swift
//  musica
//
//  Created by Jake Davies on 03/07/2022.
//

import SwiftUI

struct SignIn: View {
    @ObservedObject var manager: LoginManager
    
    var body: some View {
        if !manager.loggedIn {
            NavigationView {
                GeometryReader { geo in
                    HStack {
                        Spacer()
                        VStack {
                            Spacer()
                            Text("Please enter your phone number")
                            textEntry.frame(width: geo.size.width * 0.85)
                            NavigationLink("Submit") {
                                CodeVerificationView()
                            }
                            .musicaLargeButton(.blue)
                            .frame(width: geo.size.width * 0.85)
                            Spacer()
                        }
                        Spacer()
                    }
                }
            }
        } else {
            MainView()
        }
    }
    
    private var textEntry: some View {
        TextField("Phone Number", text: $manager.phoneNumber)
            .textContentType(.telephoneNumber)
            .padding()
            .background(.quaternary)
            .cornerRadius(15.0)
    }
}

struct SignIn_Previews: PreviewProvider {
    static var previews: some View {
        SignIn(manager: LoginManager())
    }
}
