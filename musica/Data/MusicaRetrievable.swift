//
//  MusicaRetrievable.swift
//  musica
//
//  Created by Jake Davies on 04/07/2022.
//

import Foundation

// Any objects that can be retrieved from the database
public protocol MusicaRetrievable: Codable, Identifiable, Hashable {
    func databaseQuery() -> String
}

// Any objects that can be retrieved as an ordered list
public protocol MusicaBulkRetrievable: MusicaRetrievable {
    // allows us to sort based on a query
    func relevanceScore(query: String) -> Int
}


