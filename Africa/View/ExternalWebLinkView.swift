//
//  ExternalWebLinkView.swift
//  Africa
//
//  Created by Raziel Hernandez on 2024-06-15.
//

import SwiftUI

struct ExternalWebLinkView: View {
    let animal: Animal
    
    var body: some View {
        GroupBox {
          HStack {
            Image(systemName: "globe")
            Text("Wikipedia")
            Spacer()
            
            Group {
              Image(systemName: "arrow.up.right.square")
              
              Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https://wikipedia.org"))!)
            }
            .foregroundColor(.accentColor)
          } //: HSTACK
        } //: BOX
    }
}

#Preview {
    @State var animals: [Animal] = Bundle.main.decode("animals.json")
    return ExternalWebLinkView(animal: animals[6])
}
