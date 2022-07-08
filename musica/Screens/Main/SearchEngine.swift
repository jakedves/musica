//
//  SearchEngineViewModel.swift
//  musica
//
//  Created by Jake Davies on 04/07/2022.
//

import Foundation
import SwiftUI

/**
 This class represents the main view model of this application. It contains the data used for searching
 and retrieving videos and profiles.
 */
class SearchEngine: ObservableObject {
    @Published var genres: [(String, Color)] = []
    @Published var instruments: [(String, Color)] = []
    @Published var achievements: [(String, Color)] = []

    init() {
        setGenres()
        setInstruments()
        setAchievements()
    }
    
    /** - Returns: A list of all possible tags */
    func getAllTags() -> [(String, Color)] { genres + instruments + achievements }
    
    /** Sets the initial list of all genre tags */
    private func setGenres() {
        self.genres = [("rock", .red),
                       ("pop", .purple),
                       ("jazz", .orange),
                       ("metal", .black),
                       ("classical", .orange),
                       ("hip-hop", .brown),
                       ("progressive", .yellow)]
    }
    
    /** Sets the initial list of all instrument tags */
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
    
    /** Sets the initial list of all achievement tags */
    private func setAchievements() {
        self.achievements = [("app creator", .blue)]
    }
    
    /** Retrieves a list of random retrieveables */
    public func retrieve<MusicaRetrievable>() -> [MusicaRetrievable] {
        // TODO: Implement this
        []
    }
    
    /**
     Retrieves a list of retrieveables related to a query
     
     - Parameter query: The string part of a tag (or later, caption etc.) to search the database for
     */
    public func retrieve<MusicaBulkRetrievable>(query: String) -> [MusicaBulkRetrievable] {
        // TODO: Implement this
        []
    }
}
