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
        NavigationView {
            GeometryReader { geo in
                VStack {
                    Text("Please enter your phone number")
                        
                    textEntry
                        .frame(width: geo.size.width * 0.85)
                    NavigationLink("Submit") {
                        CodeVerificationView(manager: manager)
                            .navigationBarHidden(true)
                            .navigationBarBackButtonHidden(true)
                    }
                    .musicaLargeButton(.blue)
                    .frame(width: geo.size.width * 0.85)
                }
                .position(x: geo.size.width / 2.0, y: geo.size.height * 0.85 / 2.0)
            }
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
