//
//  InsetMapView.swift
//  Africa
//
//  Created by Raziel Hernandez on 2024-06-15.
//

import SwiftUI
import MapKit

struct InsetMapView: View {
    
    @State private var cameraPosition = MapCameraPosition.region(MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599),
        span: MKCoordinateSpan(latitudeDelta: 60, longitudeDelta: 60)
    ))
    
    var body: some View {
        Map(position: $cameraPosition)
            .overlay(
              NavigationLink(destination: MapView()) {
                HStack {
                  Image(systemName: "mappin.circle")
                    .foregroundColor(Color.white)
                    .imageScale(.large)
                  
                  Text("Locations")
                    .foregroundColor(.accentColor)
                    .fontWeight(.bold)
                } //: HSTACK
                .padding(.vertical, 10)
                .padding(.horizontal, 14)
                .background(
                  Color.black
                    .opacity(0.4)
                    .cornerRadius(8)
                )
              } //: NAVIGATION
              .padding(12)
              , alignment: .topTrailing
            )
            .frame(height: 256)
            .cornerRadius(12)
    }
}

#Preview {
    InsetMapView()
}
