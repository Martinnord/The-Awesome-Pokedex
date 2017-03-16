//
//  Pokemon.swift
//  The-Awesome-Pokedex
//
//  Created by Martin Nordström on 2017-03-16.
//  Copyright © 2017 Martin Nordström. All rights reserved.
//

import Foundation

class Pokemon {

    // Properties
    private var _name: String!
    private var _pokedexId: Int!
    
    
    // Getters
    var name: String {
        
        return _name
    }
    
    var pokedexId: Int {
    
        return _pokedexId
    }
    
    // Initializer
    init(name: String, pokedexId: Int) {
        
        self._name = name
        self._pokedexId = pokedexId
    }
    
}
