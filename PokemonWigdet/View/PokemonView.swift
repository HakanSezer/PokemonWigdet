//
//  PokemonView.swift
//  PokemonWigdet
//
//  Created by Hakan Sezer on 4.02.2024.
//

import SwiftUI

struct PokemonView: View {
    let pokemon: Pokemon
    var body: some View {
        HStack {
            OzelGorselView(image: Image(pokemon.gorselIsmi))
                .frame(width: 100, height: 100, alignment: .center)
                .padding()
            Spacer()
            VStack {
                Text(pokemon.isim)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.yellow)
                
                Text(pokemon.tur)
                    .fontWeight(.bold)
            }
            Spacer()
        }
    }
}

#Preview {
    PokemonView(pokemon: pikachu)
}
