//
//  VideoModel.swift
//  Africa
//
//  Created by Raziel Hernandez on 2024-06-15.
//

import Foundation

struct Video: Codable, Identifiable {
  let id: String
  let name: String
  let headline: String
  
  // Computed Property
  var thumbnail: String {
    "video-\(id)"
  }
}
