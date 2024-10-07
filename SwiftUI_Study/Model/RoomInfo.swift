//
//  RoomInfo.swift
//  SwiftUI_Study
//
//  Created by nayoung kwon on 10/7/24.
//

import SwiftUI

struct RoomInfo: Identifiable, Hashable {
  let id = UUID()
  let name: String
  let image: Image

  func hash(into hasher: inout Hasher) {
    hasher.combine(name)
  }
}
