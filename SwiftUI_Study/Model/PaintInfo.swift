//
//  PaintInfo.swift
//  SwiftUI_Study
//
//  Created by nayoung kwon on 10/7/24.
//

import Foundation

struct PaintInfo: Identifiable, Hashable {
  let id = UUID()
  let name: String
  let author: String

  func hash(into hasher: inout Hasher) {
    hasher.combine(id)
  }
}
