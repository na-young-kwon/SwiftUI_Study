//
//  Router.swift
//  SwiftUI_Study
//
//  Created by nayoung kwon on 10/7/24.
//

import SwiftUI

final class Router: ObservableObject {

  enum Destination: Codable, Hashable {
    case livingRoom
    case bedroom(owner: String)
  }

  @Published var naviPath = NavigationPath()

  func navigate(to destination: Destination) {
    naviPath.append(destination)
  }

  func navigateBack() {
    naviPath.removeLast()
  }

  func navigateToRoot() {
    naviPath.removeLast(naviPath.count)
  }
}
