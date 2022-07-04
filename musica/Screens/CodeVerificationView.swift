//
//  CodeVerificationView.swift
//  musica
//
//  Created by Jake Davies on 03/07/2022.
//

import SwiftUI

struct CodeVerificationView: View {
    @StateObject var manager: LoginManager
    
    var body: some View {
        VStack {
            Text("Please enter your code")
            TextField("Code", text: $manager.code)
                .keyboardType(.decimalPad)
                .multilineTextAlignment(.center)
                .padding()
                .background(.quaternary)
                .cornerRadius(15.0)
            Button("Submit") {}
                .musicaLargeButton(.blue)
        }
        .padding()
    }
}

struct CodeVerificationView_Previews: PreviewProvider {
    static var previews: some View {
        CodeVerificationView(manager: LoginManager())
    }
}
