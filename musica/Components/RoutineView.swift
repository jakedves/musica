//
//  RoutineView.swift
//  musica
//
//  Created by Jake Davies on 04/07/2022.
//

import SwiftUI

struct RoutineView: View {
    @StateObject var routine = Routine()
    
    var body: some View {
        ZStack {
            Rectangle()
                .background(.ultraThinMaterial)
                .opacity(Constants.bgOpacity)
                .frame(height: Constants.cellHeight)
                .cornerRadius(Constants.radius)
            
            HStack {
                // TODO: Make this image not distorted; make image load from view model
                Image("Test")
                    .resizable()
                    .aspectRatio(1.0, contentMode: .fill)
                    .frame(width: Constants.photo, height: Constants.photo)
                VStack(alignment: .leading) {
                    Text(routine.title)
                        .bold()
                        
                    Text(routine.artist)
                    Text("waveform")
                }
                .lineLimit(1)
                Spacer()
                Image(systemName: Constants.indicator)
            }
            .padding()
        }
        .padding()
    }
    
    private struct Constants {
        static let indicator = "chevron.right"
        static let bgOpacity = 0.8
        static let cellHeight = 100.0
        static let radius = 15.0
        static let photo = 50.0
    }
}

struct RoutineView_Previews: PreviewProvider {
    static var previews: some View {
        RoutineView()
    }
}
