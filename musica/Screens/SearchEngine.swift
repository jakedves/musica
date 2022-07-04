//
//  SearchEngineViewModel.swift
//  musica
//
//  Created by Jake Davies on 04/07/2022.
//

import Foundation
import SwiftUI

class SearchEngine: ObservableObject {
    @Published var genres: [(String, Color)] = []
    @Published var instruments: [(String, Color)] = []
    @Published var achievements: [(String, Color)] = []

    init() {
        setGenres()
        setInstruments()
        setAchievements()
    }
    
    func getAllTags() -> [(String, Color)] { genres + instruments + achievements }
    
    private func setGenres() {
        self.genres = [("rock", .red),
                       ("pop", .purple),
                       ("jazz", .orange),
                       ("metal", .black),
                       ("classical", .orange),
                       ("hip-hop", .brown),
                       ("progressive", .yellow)]
    }
    
    private func setInstruments() {
        self.instruments = [("guitar", .red),
                            ("piano", .blue),
                            ("flute", .green),
                            ("violin", .purple),
                            ("viola", .pink),
                            ("drums", .black),
                            ("bass", .orange),
                            ("vocals", .blue)]
    }
    
    private func setAchievements() {
        self.achievements = [("app creator", .blue)]
    }
}
