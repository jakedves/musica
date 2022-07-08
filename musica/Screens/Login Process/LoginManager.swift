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

/**
 This class represents the logic for the login process.
 
 - Parameter method: how the user is signing in
 - Parameter loggedIn: whether a user is logged in
 - Parameter loginFailed: whether a log in has been unsuccessful
 - Parameter phoneNumber: the input for a user's phone number
 - Parameter code: the verification code the user is entering
 */
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
    
    /**
     Ran once a login has been succesful. Sets the user.
     */
    private func loginSuccess() {
        // set AppUser here with a network call
        self.loggedIn = true
    }
    
    /**
     This method will check if the number exists in the database, and will initiate
     a request for sending a  verification code.
     */
    func submitPhoneNumber() {
        // check number on server
        // send number code
    }
    
    /**
     This method will check the verification code against the one that has been sent, and will
     then call either `loginSuccess()` or `loginFailure()`.
    */
    func submitCode() {
        // check verification code
        // loginSuccess()
    }
}
