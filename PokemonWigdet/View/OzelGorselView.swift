//
//  OzelGorselView.swift
//  PokemonWigdet
//
//  Created by Hakan Sezer on 4.02.2024.
//

import SwiftUI

struct OzelGorselView: View {
    var image: Image
    
    var body: some View {

        image.resizable()
            .frame(width: 150, height: 150)
            .shadow(radius: 10)
    }
}

#Preview {
    OzelGorselView(image: Image("pikachu"))
}
