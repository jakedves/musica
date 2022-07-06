//
//  ProfileViewModel.swift
//  musica
//
//  Created by Jake Davies on 03/07/2022.
//

import Foundation
import SwiftUI

class ProfileViewModel: ObservableObject {
    private var userID: UUID
    @Published var name = ""
    @Published var bio = ""
    @Published var image: Data?
    @Published var verified = false
    @Published var tags: [(String, Color)]
    @Published var highlightPointers = [UUID(), UUID(), UUID()]
    @Published var highlightThumbnails = [Data?]()
    
    init(id: UUID) {
        // load the user here
        userID = id
        name = "Jake"
        bio = "This is my bio."
        image = testImageAsData
        verified = true
        tags = [("rock", .red), ("pop", .purple), ("jazz", .orange), ("guitar", .red), ("metal", .black)]
        highlightThumbnails = [testImageAsData, testImageAsData, testImageAsData]
    }
    
    // fetch from server
    func getProfile() {
        // do request, load into published variables
    }
    
    static func getHighlightThumbnail(id: UUID) -> UIImage {
        // use id to do lookup and download thumbnail for a highlight
        return UIImage(data: testImageAsData!)!
    }
}
