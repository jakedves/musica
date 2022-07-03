//
//  Routines.swift
//  musica
//
//  Created by Jake Davies on 03/07/2022.
//

import SwiftUI

struct Routines: View {
    private let routines = [1, 2, 3, 4, 5, 6]
    
    var body: some View {
        VStack {
            Text("routines")
            List {
                ForEach(routines, id: \.self) { routine in
                    Text(String(routine))
                }
            }
        }
    }
}

struct Routines_Previews: PreviewProvider {
    static var previews: some View {
        Routines()
    }
}
