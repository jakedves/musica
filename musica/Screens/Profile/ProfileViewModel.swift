//
//  ProfileViewModel.swift
//  musica
//
//  Created by Jake Davies on 03/07/2022.
//

import Foundation
import UIKit

class ProfileViewModel: ObservableObject {
    private var userID: UUID
    @Published var name = ""
    @Published var bio = ""
    @Published var image: Data?
    @Published var verified = false
    @Published var tags: [Tag]
    @Published var highlightPointers = [UUID(), UUID(), UUID()]
    @Published var highlightThumbnails = [Data?]()
    
    init(id: UUID) {
        userID = id
        name = "Jake"
        bio = "This is my bio."
        image = testImageAsData
        verified = true
        tags = [Tag("rock", .red), Tag("pop", .purple), Tag("jazz", .orange), Tag("guitar", .red), Tag("metal", .black)]
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
