//
//  InsetFactView.swift
//  Africa
//
//  Created by Raziel Hernandez on 2024-06-15.
//

import SwiftUI

struct InsetFactView: View {
    let animal: Animal
    
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        }
    }
}

#Preview {
    @State var animals: [Animal] = Bundle.main.decode("animals.json")
    return InsetFactView(animal: animals[5])
}
