//
//  Login.swift
//  musica
//
//  Created by Jake Davies on 20/06/2022.
//

import SwiftUI

struct Login: View {
    var body: some View {
        ZStack {
            Color.purple.ignoresSafeArea()
            VStack {
                // big logo
                // caption
                // Spacer()
                // TODO: add SFSymbols phone icon into "sign in with phone number"
                Button("Sign in with Phone Number", action: {}).musicaLargeButton(.blue)
                // TODO: replace with actual Apple button
                Button("Sign in with Apple", action: {}).musicaLargeButton(.black)
            }
            .padding()
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
