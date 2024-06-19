//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Raziel Hernandez on 2024-06-15.
//

import SwiftUI

struct AnimalDetailView: View {
    let animal: Animal
    
    var body: some View {
        ScrollView (.vertical, showsIndicators: false) {
            VStack (alignment: .center, spacing: 20) {
                // HERO IMAGE
                Image(animal.image)
                  .resizable()
                  .scaledToFit()
                
                // TITLE
                Text(animal.name.uppercased())
                  .font(.largeTitle)
                  .fontWeight(.heavy)
                  .multilineTextAlignment(.center)
                  .padding(.vertical, 8)
                  .foregroundColor(.primary)
                  .background(
                    Color.accentColor
                      .frame(height: 6)
                      .offset(y: 24)
                  )
                
                // HEADLINE
                Text(animal.headline)
                  .font(.headline)
                  .multilineTextAlignment(.leading)
                  .foregroundColor(.accentColor)
                  .padding(.horizontal)
                
                // GALLERY
                Group {
                  HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
                  
                  InsetGalleryView(animal: animal)
                }
                .padding(.horizontal)
                
                // FACTS
                Group {
                  HeadingView(headingImage: "questionmark.circle", headingText: "Did you know?")
                  
                  InsetFactView(animal: animal)
                }
                .padding(.horizontal)
                
                // DESCRIPTION
                Group {
                  HeadingView(headingImage: "info.circle", headingText: "All about \(animal.name)")
                  
                  Text(animal.description)
                    .multilineTextAlignment(.leading)
                    .layoutPriority(1)
                }
                .padding(.horizontal)
                
                // MAP
                Group {
                  HeadingView(headingImage: "map", headingText: "National Parks")
                  
                  InsetMapView()
                }
                .padding(.horizontal)
                
                // LINK
                Group {
                  HeadingView(headingImage: "books.vertical", headingText: "Learn More")
                  
                  ExternalWebLinkView(animal: animal)
                }
                .padding(.horizontal)
            }
            .navigationBarTitle("Learn more about \(animal.name)", displayMode: .inline)
        }
        
    }
}

#Preview {
    @State var animals: [Animal] = Bundle.main.decode("animals.json")
    
    return NavigationView {
        AnimalDetailView(animal: animals[2])
    }
}
