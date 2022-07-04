//
//  RoutineView.swift
//  musica
//
//  Created by Jake Davies on 04/07/2022.
//

import SwiftUI

struct RoutineView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .background(.ultraThinMaterial)
                .opacity(0.8)
                .frame(height: 100.0)
                .cornerRadius(15.0)
            
            HStack {
                Image("Test")
                    .resizable()
                    .aspectRatio(1.0, contentMode: .fill)
                    .frame(width: 50.0, height: 50.0)
                VStack(alignment: .leading) {
                    Text("My Practise Routine for every single day of the week")
                        .bold()
                        
                    Text("Jake Davies")
                    Text("waveform")
                }
                .lineLimit(1)
                Spacer()
                Image(systemName: "chevron.right")
            }
            .padding()
        }
        .padding()
    }
}

struct RoutineView_Previews: PreviewProvider {
    static var previews: some View {
        RoutineView()
    }
}
