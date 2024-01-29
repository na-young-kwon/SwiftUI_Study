//
//  RenderView.swift
//  SwiftUI_Study
//
//  Created by nayoung kwon on 1/18/24.
//

import SwiftUI

struct RenderView: View {
    @StateObject var viewModel = ViewModel()
    
//    @State var firstTitle = "첫번째 타이틀"
//    @State var secondTitle = "두번째 타이틀"
    @State var thirdTitle = "세번째 타이틀"
    
    var body: some View {
        VStack(spacing: 10) {
            FirstView(text: $viewModel.firstText)
//                .background(.random)
            
            SecondView(text: $viewModel.secondText)
//                .background(.random)
            
            ThirdView(text: thirdTitle)
            
            Button("타이틀 변경") {
                viewModel.changeFirstTitle()
            }
        }

    }
}

#Preview {
    RenderView()
}

extension ShapeStyle where Self == Color {
    static var random: Color {
        Color(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1)
        )
    }
}

