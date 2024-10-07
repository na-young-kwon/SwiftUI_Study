//
//  RoomDetailView.swift
//  SwiftUI_Study
//
//  Created by nayoung kwon on 10/7/24.
//

import SwiftUI

struct RoomDetailView: View {

  let roomInfo: RoomInfo

  var body: some View {
    VStack {
      roomInfo.image
        .font(.system(size: 56))
        .foregroundColor(.accentColor)
      Text(roomInfo.name)
        .font(.system(size: 24))
    }
    .padding()
  }
}

#Preview {
  RoomDetailView(roomInfo: RoomInfo(name: "name", image: Image(systemName: "circle")))
}
