//
//  AnimalGridItemView.swift
//  Africa
//
//  Created by Raziel Hernandez on 2024-06-16.
//

import SwiftUI

struct AnimalGridItemView: View {
    // MARK: - PROPERTIES
    
    let animal: Animal

    // MARK: - BODY

    var body: some View {
      Image(animal.image)
        .resizable()
        .scaledToFit()
        .cornerRadius(12)
    }
}

#Preview {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    return AnimalGridItemView(animal: animals[4])
}
