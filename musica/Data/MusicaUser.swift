//
//  MusicaUser.swift
//  musica
//
//  Created by Jake Davies on 19/06/2022.
//

import Foundation

// The dataclass for a Musica User. Videos will only be local to the app user, for other
// users these videos will be retrieved dynamically and lazily from the database. UUIDs can
// act as database pointers.
struct MusicaUser: Identifiable, Equatable {
    let id: UUID
    let profileImage: UUID
    let name: String
    let bio: String
    let following: [UUID]
    let followers: [UUID] // each MusicaUser has an ID, and so followers/following is a list of pointers to those users
    let badges: [String]?
    let videos: [UUID]
    let highlights: [UUID] // each video has a video ID, and the highlights are pointers to those videos
}
