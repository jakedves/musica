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
    @Published var phoneNumber = "" {
        didSet {
            let digits = phoneNumber.filter { $0.isNumber }
            if phoneNumber != digits {
                phoneNumber = digits
            }
        }
    }
    
    public static let codeLength = 6
    // TODO: Fix this not working
    @Published var code = "" {
        didSet {
            let digits = code.filter { $0.isNumber }
            if code != digits {
                code = digits
            }
            
            if code.count >= LoginManager.codeLength {
                submitCode()
            }
        }
    }
    
    init() {}
    
    func loginSuccess() {
        // set AppUser here with a network call
        self.loggedIn = true
    }
    
    func submitPhoneNumber() {
        // check number on server
        // send number code
    }
    
    func submitCode() {
        // check verification code
        // loginSuccess()
    }
}
