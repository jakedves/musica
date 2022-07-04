//
//  CodeVerificationView.swift
//  musica
//
//  Created by Jake Davies on 03/07/2022.
//

import SwiftUI

struct CodeVerificationView: View {
    @State var mystring = ""
    
    var body: some View {
        VStack {
            Text("Please enter your code")
            TextField("Code", text: $mystring)
            Button("Submit") {}
                .musicaLargeButton(.blue)
        }
        .padding()
    }
}

struct CodeVerificationView_Previews: PreviewProvider {
    static var previews: some View {
        CodeVerificationView()
    }
}
