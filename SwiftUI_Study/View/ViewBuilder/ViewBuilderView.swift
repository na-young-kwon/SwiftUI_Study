//
//  ViewBuilderView.swift
//  SwiftUI_Study
//
//  Created by SNPLAB on 12/21/23.
//

import SwiftUI

struct ViewBuilderView: View {
    var body: some View {
        VStack {
            HeaderViewGeneric(title: "제네릭 타이틀") {
                Text("설명")
                Image(systemName: "heart.fill")
                Text("설명")
            }
            Spacer()
        }
    }
}

#Preview {
    ViewBuilderView()
}
