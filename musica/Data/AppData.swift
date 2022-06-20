//
//  AppData.swift
//  musica
//
//  Created by Jake Davies on 20/06/2022.
//

import Foundation
import SwiftUI

// important constants etc, that need to be accessed globally
struct AppData {
    static let instruments = [Tag("Guitar", .red), Tag("Piano", .blue), Tag("clarinet", .purple), Tag("flute", .purple), Tag("drums", .black),
                              Tag("bass", .green), Tag("vocals", .orange)]
    static let genres = [Tag("rock", .red), Tag("pop", .purple), Tag("metal", .black), Tag("jazz", .orange), Tag("classical", .purple),
                         Tag("hip-hop", .red), Tag("progressive", .purple)]
    static let tags = instruments + genres
}

struct Tag: Hashable {
    let content: String
    let color: Color
    
    init(_ string: String, _ color: Color) {
        self.content = string
        self.color = color
    }
}
