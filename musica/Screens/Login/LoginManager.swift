//
//  LoginViewModel.swift
//  musica
//
//  Created by Jake Davies on 03/07/2022.
//

import Foundation

enum SignInMethod {
    case phone
    case apple
}

class LoginManager: ObservableObject {
    @Published var method: SignInMethod?
    @Published var loggedIn = false
    @Published var loginFailed = false
    @Published var phoneNumber = ""
    @Published var code = 0
    
    init() {}
    
    func logInSuccess() {
        // set AppUser here with a network call
        self.loggedIn = true
    }
    
    func submitPhoneNumber() {
        // check number on server
        // send number code
    }
    
    func submitCode() {
        // check verification code
        // loggedIn.toggle()
    }
}
