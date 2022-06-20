//
//  MusicaVideo.swift
//  musica
//
//  Created by Jake Davies on 19/06/2022.
//

import Foundation

struct MusicaVideo: Identifiable, Equatable {
    let id: UUID
    let creators: [UUID] // future support for duet style etc...
    let dateCreated: Date
    let data: Data
    let caption: String
    let tags: [String]
}
