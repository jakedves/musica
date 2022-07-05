//
//  Routine.swift
//  musica
//
//  Created by Jake Davies on 04/07/2022.
//

import Foundation

class Routine: ObservableObject {
    @Published var title: String = ""
    @Published var artist: String = ""
    // data for waveform
    @Published var cover: Data?
    
    init(_ title: String = "routine", _ artist: String = "artist") {
        self.title = title
        self.artist = artist
    }
    
    func relevanceScore(query: String) -> Int { 0 }
    
    func databaseQuery() -> String { "" }
    
    static func == (lhs: Routine, rhs: Routine) -> Bool { true }
}
