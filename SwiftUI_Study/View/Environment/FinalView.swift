//
//  FinalView.swift
//  SwiftUI_Study
//
//  Created by SNPLAB on 12/21/23.
//

import SwiftUI

struct FinalView: View {
    @ObservedObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        ZStack {
            //background
            LinearGradient(
                gradient: Gradient(colors: [Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)), Color(#colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1))]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            // 내용
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(viewModel.dataArray, id: \.self) { item in
                        Text(item)
                    }
                }
            }
            .foregroundColor(.white)
            .font(.largeTitle)
        }
    }
}

//#Preview {
//    FinalView()
//}
