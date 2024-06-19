//
//  CenterModifier.swift
//  Africa
//
//  Created by Raziel Hernandez on 2024-06-16.
//

import SwiftUI

struct CenterModifier: ViewModifier {
  func body(content: Content) -> some View {
    HStack {
      Spacer()
      content
      Spacer()
    }
  }
}
