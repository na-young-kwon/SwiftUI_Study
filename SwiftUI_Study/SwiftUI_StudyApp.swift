//
//  SwiftUI_StudyApp.swift
//  SwiftUI_Study
//
//  Created by 권나영 on 2023/12/07.
//

import SwiftUI

@main
struct SwiftUI_StudyApp: App {
  @ObservedObject var router = Router()

    var body: some Scene {
        WindowGroup {
//            RenderView()
//            ContentView()
          NavigationStack(path: $router.naviPath) {
            HomeView()
              .navigationDestination(for: Router.Destination.self) { destination in
                switch destination {
                case .livingRoom:
                  LivingRoomView()
                case .bedroom(owner: let owner):
                  BedRoomView(ownerName: owner)
                }
              }
          }
          .environmentObject(router)
        }
    }
}
