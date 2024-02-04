//
//  ContentView.swift
//  PokemonWigdet
//
//  Created by Hakan Sezer on 2.02.2024.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("pokemon", store: UserDefaults(suiteName: "group.com.hakansezer.PokemonWigdet"))
    var pokomonData : Data = Data()
    
    var body: some View {
        VStack {
            ForEach(pokemonDizisi) { pokemon in
                PokemonView(pokemon: pokemon)
                    .onTapGesture(perform: {
                        userDefualtsKaydet(pokemon: pokemon)
                    })
            }
        }
    }
    
    func userDefualtsKaydet(pokemon: Pokemon) {
        
        if let pokemonData = try? JSONEncoder().encode(pokemon) {
            self.pokomonData = pokemonData
        }
            
            
        print(pokemon.isim)
    }
}

#Preview {
    ContentView()
}
