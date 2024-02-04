//
//  Pokemon.swift
//  PokemonWigdet
//
//  Created by Hakan Sezer on 4.02.2024.
//

import Foundation

struct Pokemon: Identifiable, Codable {
    var gorselIsmi: String
    var isim: String
    let tur: String
    
    var id : String {
        gorselIsmi
    }
}

let pikachu = Pokemon(gorselIsmi: "pikachu", isim: "Pikachu", tur: "Mouse Pokemon")
let eevee = Pokemon(gorselIsmi: "eevee", isim: "Eevee", tur: "Starts Pokemon")
let bullbasaur = Pokemon(gorselIsmi: "bullbasaur", isim: "Bullbasaur", tur: "Water Pokemon")


let pokemonDizisi = [pikachu, eevee, bullbasaur]
