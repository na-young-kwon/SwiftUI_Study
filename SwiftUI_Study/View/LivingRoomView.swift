//
//  LivingRoomView.swift
//  SwiftUI_Study
//
//  Created by nayoung kwon on 10/7/24.
//

import SwiftUI

struct LivingRoomView: View {

  @EnvironmentObject var router: Router

  var body: some View {
    VStack {
      Image(systemName: "sofa.fill")
        .font(.system(size: 56))
        .foregroundColor(.accentColor)
      Text("**Livingroom**")
        .font(.system(size: 24))
        .padding(.top, 12)

      Button("**Go to Jane's Bedroom**") {
        router.navigate(to: .bedroom(owner: "Jane"))
      }
      .padding(.top, 12)

      Button("**Go to John's Bedroom**") {
        router.navigate(to: .bedroom(owner: "John"))
      }
      .padding(.top, 12)

      Button {
        router.navigateBack()
      } label: {
        Text("Back")
      }
      .padding(.top, 4)
    }
    .navigationBarBackButtonHidden()
    .padding()
  }
}

#Preview {
  LivingRoomView()
}
