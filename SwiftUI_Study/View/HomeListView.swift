//
//  RoomListView.swift
//  SwiftUI_Study
//
//  Created by nayoung kwon on 10/7/24.
//

import SwiftUI

struct HomeListView: View {
  @State private var naviPath = NavigationPath()
  var rooms: [RoomInfo]
  var paints: [PaintInfo]

  var body: some View {
    NavigationStack {
      List(rooms) { room in
        NavigationLink(room.name, value: room)
      }
      .navigationTitle("House Rooms")
      .navigationDestination(for: RoomInfo.self) { room in
        RoomDetailView(roomInfo: room)
      }
    }
  }
}

#Preview {
  HomeListView(
    rooms: [
      RoomInfo(name: "Room 1", image: Image(systemName: "circle")),
      RoomInfo(name: "Room 2", image: Image(systemName: "heart"))
    ], 
    paints: [
      PaintInfo(name: "name 1", author: "author 1"),
      PaintInfo(name: "name 2", author: "author 2")
    ]
  )
}

