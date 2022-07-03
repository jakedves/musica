//
//  Highlight.swift
//  musica
//
//  Created by Jake Davies on 02/07/2022.
//

import SwiftUI

struct Highlight: View {
    var body: some View {
        ZStack {
            // Image(): Thumbnail for the video
            Color.red
            
            contentDetail
        }
        .aspectRatio(9.0 / 16.0, contentMode: .fit)
        .cornerRadius(15.0)
    }
    
    // we can ignore the type of highlight (song vs routine vs N/A) by using nullable images,
    // text and have the view be empty when .none
    var contentDetail: some View {
        GeometryReader { geo in
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    HStack {
                        Image(systemName: "hammer")
                        VStack(alignment: .leading) {
                            Text("Title or routine name")
                                .bold()
                            Text("Artists or routine creator")
                        }
                        Spacer()
                    }
                    .padding()
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(15.0)
                    .frame(width: geo.size.width * 0.95)
                    Spacer()
                }
            }
        }
        .padding([.bottom])
    }
}

struct Highlight_Previews: PreviewProvider {
    static var previews: some View {
        Highlight()
    }
}
