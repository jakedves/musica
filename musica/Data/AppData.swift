//
//  AppData.swift
//  musica
//
//  Created by Jake Davies on 20/06/2022.
//

import Foundation

// important constants etc, that need to be accessed globally
struct AppData {
    static let instruments = ["guitar", "piano", "clarinet", "flute", "drums", "bass", "vocals"]
    static let genres = ["rock", "pop", "metal", "jazz", "classical", "progressive", "hip-hop"]
    static let tags = instruments + genres
}
