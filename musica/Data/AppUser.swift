//
//  AppUser.swift
//  musica
//
//  Created by Jake Davies on 19/06/2022.
//

import Foundation

// the app user is the user who is currently logged onto the app. They
// behave the same as a regular user, except the profile image and highlights
// videos aren't loaded lazily.
struct AppUser: Equatable {
    var user: MusicaUser
}
