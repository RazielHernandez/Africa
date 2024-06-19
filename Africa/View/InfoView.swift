//
//  InfoView.swift
//  Africa
//
//  Created by Raziel Hernandez on 2024-06-16.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        VStack {
          Image("compass")
            .resizable()
            .scaledToFit()
            .frame(width: 128, height: 128)
          
          Text("""
      Copyright © Puma Azteca
      All right reserved
      Building Better Apps ♡
      """)
            .font(.footnote)
            .multilineTextAlignment(.center)
        } //: VSTACK
        .padding()
        .opacity(0.4)
    }
}

#Preview {
    InfoView()
}
