//
//  ProfileCard.swift
//  musica
//
//  Created by Jake Davies on 06/07/2022.
//

import SwiftUI

struct ProfileCard: View {
    // @StateObject var profileObject: ...
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.pink.opacity(0.5))
                .cornerRadius(25.0)
            Profile()
        }
        .padding()
    }
}

struct ProfileCard_Previews: PreviewProvider {
    static var previews: some View {
        ProfileCard()
    }
}
