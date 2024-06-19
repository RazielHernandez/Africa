//
//  InsetGalleryView.swift
//  Africa
//
//  Created by Raziel Hernandez on 2024-06-15.
//

import SwiftUI

struct InsetGalleryView: View {
    let animal: Animal
    
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false) {
            HStack (alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    .cornerRadius(12)
                }
            }
        }
    }
}

#Preview {
    @State var animals: [Animal] = Bundle.main.decode("animals.json")
    return InsetGalleryView(animal: animals[3])
}
