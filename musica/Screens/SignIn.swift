//
//  SignIn.swift
//  musica
//
//  Created by Jake Davies on 03/07/2022.
//

import SwiftUI

enum SignInMethod {
    case phone
    case apple
}

struct SignIn: View {
    @State var entry: String = ""
    
    var body: some View {
        NavigationView {
            GeometryReader { geo in
                HStack {
                    Spacer()
                    VStack {
                        Spacer()
                        Text("Please enter your phone number")
                        textEntry.frame(width: geo.size.width * 0.85)
                        NavigationLink("Submit") {
                            // TODO: Submit => Verify Code => MainView().navigationBarHidden(true).navigationBarBackButtonHidden(true)
                            MainView()
                                .navigationBarBackButtonHidden(true)
                                .navigationBarTitle("")
                                .navigationBarHidden(true)
                        }
                        .musicaLargeButton(.blue)
                        .frame(width: geo.size.width * 0.85)
                        Spacer()
                    }
                    Spacer()
                }
            }
        }
    }
    
    private var textEntry: some View {
        TextField("Phone Number", text: $entry)
            .textContentType(.telephoneNumber)
            .padding()
            .background(.quaternary)
            .cornerRadius(15.0)
            
    }
}

struct SignIn_Previews: PreviewProvider {
    static var previews: some View {
        SignIn()
    }
}
