//
//  ViewController.swift
//  The-Awesome-Pokedex
//
//  Created by Martin Nordström on 2017-03-16.
//  Copyright © 2017 Martin Nordström. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    // UICollectionViewDelegate - The delegate for the collection view
    // UICollectionViewDataSource - The class that will hold the data for the class
    // UICollectionViewFlowLayout - The layout that will orginize items
    
    @IBOutlet weak var collection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collection.dataSource = self
        collection.delegate = self
        
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // Creates our cells
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PokeCell", for: indexPath) as? PokeCell {
        
            let pokemon = Pokemon(name: "Pokemon", pokedexId: indexPath.row)
            cell.configureCell(pokemon: pokemon)
            
            return cell
            
        } else {
            
            return UICollectionViewCell()
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // Tapping on a cell will be displayed here
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // Number of items in section
        
        return 30
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        // Numbers of section in collectionview
        
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexpath: IndexPath) -> CGSize {
        // Define the size of cell
        
        return CGSize(width: 105, height: 105)
    }
    
}

