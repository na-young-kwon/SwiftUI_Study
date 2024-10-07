//
//  BedRoomView.swift
//  SwiftUI_Study
//
//  Created by nayoung kwon on 10/7/24.
//

import SwiftUI

struct BedRoomView: View {

  @EnvironmentObject var router: Router
  let ownerName: String

  var body: some View {
    VStack {
      Text("\(ownerName)'s Bedroom")
        .font(.system(size: 36, weight: .bold))
        .padding(.bottom, 12)
      Image(systemName: "bed.double.fill")
        .font(.system(size: 56))
        .foregroundColor(.accentColor)

      Button {
        router.navigateBack()
      } label: {
        Text("Back to **Livingroom**")
      }
      .padding(.top, 12)

      Button {
        router.navigateToRoot()
      } label: {
        Text("Pop to **Home**")
      }
      .padding(.top, 4)

    }
    .navigationBarBackButtonHidden()
    .padding()
  }
}

#Preview {
  BedRoomView(ownerName: "name")
}
