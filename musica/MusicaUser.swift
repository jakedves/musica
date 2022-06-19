//
//  MusicaUser.swift
//  musica
//
//  Created by Jake Davies on 19/06/2022.
//

import Foundation

struct MusicaUser: Identifiable, Equatable {
    var id: UUID
    var profileImage: Data
    var name: String
    var bio: String
    var dob: Date
    var badges: [String]?
    var videos: [Data]
    var highlights: [UUID] // each video has a video ID, and the highlights are pointers to those videos
}
