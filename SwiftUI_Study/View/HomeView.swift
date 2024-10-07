//
//  RoomListView.swift
//  SwiftUI_Study
//
//  Created by nayoung kwon on 10/7/24.
//

import SwiftUI

struct HomeView: View {

  @EnvironmentObject var router: Router

  var body: some View {

    VStack {
      Image(systemName: "house.fill")
        .font(.system(size: 56))
        .foregroundColor(.accentColor)

      Text("**Home**")
        .font(.system(size: 24))

      Button("Go to Living room") {
        router.navigate(to: .livingRoom)
      }
      .padding(.top, 12)
    }
    .padding()
  }
}

#Preview {
  HomeView()
}
